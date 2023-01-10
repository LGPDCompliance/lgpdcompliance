import 'package:get_it/get_it.dart';
import 'package:lgpb_compliance/models/answer_model.dart';
import 'package:lgpb_compliance/models/historic_model.dart';
import 'package:lgpb_compliance/repository/admin_repository.dart';
import 'package:lgpb_compliance/repository/compliance_repository.dart';
import 'package:lgpb_compliance/stores/user_manager_store.dart';
import 'package:mobx/mobx.dart';

part 'historic_store.g.dart';

class HistoricStore = _HistoricStore with _$HistoricStore;

abstract class _HistoricStore with Store {
  @observable
  UserManagerStore userManager = GetIt.I<UserManagerStore>();

  @observable
  bool loadingHistoricPage = false;

  @observable
  List<HistoricModel>? listHistoric;

  @observable
  String dropdownValue = 'Selecione um filtro';

  @action
  void onChangeDropDown(String? value) {
    dropdownValue = value!;

    switch (dropdownValue) {
      case 'Score crescente':
        listHistoric!.sort((a, b) {
          return a.score.compareTo(b.score);
        });
        break;
      case 'Score decrescente':
        listHistoric!.sort((a, b) {
          return b.score.compareTo(a.score);
        });
        break;
      case 'Data crescente':
        listHistoric!.sort((a, b) {
          return a.createdAt.compareTo(b.createdAt);
        });
        break;
      case 'Data decrescente':
        listHistoric!.sort((a, b) {
          return b.createdAt.compareTo(a.createdAt);
        });
        break;
    }
  }

  @action
  Future<void> getHistoricByUserId() async {
    try {
      loadingHistoricPage = true;
      dropdownValue = 'Selecione um filtro';
      listHistoric = await AdminRepository().getHistoricCompliance(
        kTokenUser: userManager.userToken,
        userId: userManager.user.id!,
      );
      loadingHistoricPage = false;
    } catch (error) {
      print("AdminStore.getHistoricByUserId ERROR: $error}");
      return Future.error('Error');
    }
  }

  @observable
  AnswerModel? answerModel;

  @action
  Future<void> getAnswerByQuizAnswerId({required String quizId}) async {
    try {
      loadingHistoricPage = true;
      answerModel = await ComplianceRepository().getQuizAnswer(
        kTokenUser: userManager.userToken,
        quizAnswerId: quizId,
      );
      loadingHistoricPage = false;
    } catch (error) {
      print("HistoricStore.getAnswerByQuizAnswerId ERROR: $error}");
      return Future.error('Error');
    }
  }
}
