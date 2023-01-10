import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:lgpb_compliance/models/answers_form.dart';
import 'package:lgpb_compliance/models/compliance_model.dart';
import 'package:lgpb_compliance/models/historic_model.dart';
import 'package:lgpb_compliance/repository/compliance_repository.dart';
import 'package:lgpb_compliance/stores/user_manager_store.dart';
import 'package:mobx/mobx.dart';

part 'compliance_store.g.dart';

class ComplianceStore = _ComplianceStore with _$ComplianceStore;

abstract class _ComplianceStore with Store {
  @observable
  UserManagerStore userManager = GetIt.I<UserManagerStore>();

  @observable
  ComplianceModel? complianceModel;

  @observable
  HistoricModel? resultQuiz;

  @observable
  List<List<Answer>> lstAnswer = [];

  @observable
  bool loadingCompliancePage = false;

  @action
  Future<void> fetchCompliance() async {
    try {
      loadingCompliancePage = true;
      complianceModel =
          await ComplianceRepository().getCompliance(userManager.userToken);
      lstAnswer.clear();
      lstAnswer = List.generate(
        complianceModel!.sections.length,
        (i) => List.generate(
          complianceModel!.sections[i].questions.length,
          (j) => Answer(questionId: '', alternativeId: '', score: 0),
        ),
      );

      loadingCompliancePage = false;
    } catch (error) {
      print("ComplianceStore | fetchCompliance ERROR: $error}");
      return Future.error('Error');
    }
  }

  @action
  void setLstAnswers({
    required int section,
    required int index,
    required String questionId,
    required String alternativeId,
    required double score,
  }) {
    lstAnswer[section][index].alternativeId = alternativeId;
    lstAnswer[section][index].questionId = questionId;
    lstAnswer[section][index].score = score;
  }

  @action
  bool isQuizComplete() {
    for (var i = 0; i < lstAnswer.length; i++) {
      for (var j = 0; j < lstAnswer[i].length; j++) {
        if (lstAnswer[i][j].alternativeId.isEmpty) {
          return true;
        }
      }
    }
    return false;
  }

  @action
  Future<void> onConfirmQuiz(
      VoidCallback onSuccess, VoidCallback onFail) async {
    try {
      loadingCompliancePage = true;

      List<Answer> listAnswer = [];
      for (var i = 0; i < lstAnswer.length; i++) {
        for (var j = 0; j < lstAnswer[i].length; j++) {
          listAnswer.add(lstAnswer[i][j]);
        }
      }
      resultQuiz = await ComplianceRepository().submitQuizCompliance(
        kTokenUser: userManager.userToken,
        quizId: complianceModel!.id,
        answersForm:
            AnswersForm(userId: userManager.user.id!, answers: listAnswer),
      );
      onSuccess();
      loadingCompliancePage = false;
    } catch (error) {
      onFail();
      print("ComplianceStore.onSubmitQuiz ERROR: $error}");
      return Future.error('Error');
    }
  }
}
