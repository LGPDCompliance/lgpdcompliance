// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'compliance_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ComplianceStore on _ComplianceStore, Store {
  late final _$userManagerAtom =
      Atom(name: '_ComplianceStore.userManager', context: context);

  @override
  UserManagerStore get userManager {
    _$userManagerAtom.reportRead();
    return super.userManager;
  }

  @override
  set userManager(UserManagerStore value) {
    _$userManagerAtom.reportWrite(value, super.userManager, () {
      super.userManager = value;
    });
  }

  late final _$complianceModelAtom =
      Atom(name: '_ComplianceStore.complianceModel', context: context);

  @override
  ComplianceModel? get complianceModel {
    _$complianceModelAtom.reportRead();
    return super.complianceModel;
  }

  @override
  set complianceModel(ComplianceModel? value) {
    _$complianceModelAtom.reportWrite(value, super.complianceModel, () {
      super.complianceModel = value;
    });
  }

  late final _$resultQuizAtom =
      Atom(name: '_ComplianceStore.resultQuiz', context: context);

  @override
  HistoricModel? get resultQuiz {
    _$resultQuizAtom.reportRead();
    return super.resultQuiz;
  }

  @override
  set resultQuiz(HistoricModel? value) {
    _$resultQuizAtom.reportWrite(value, super.resultQuiz, () {
      super.resultQuiz = value;
    });
  }

  late final _$lstAnswerAtom =
      Atom(name: '_ComplianceStore.lstAnswer', context: context);

  @override
  List<List<Answer>> get lstAnswer {
    _$lstAnswerAtom.reportRead();
    return super.lstAnswer;
  }

  @override
  set lstAnswer(List<List<Answer>> value) {
    _$lstAnswerAtom.reportWrite(value, super.lstAnswer, () {
      super.lstAnswer = value;
    });
  }

  late final _$loadingCompliancePageAtom =
      Atom(name: '_ComplianceStore.loadingCompliancePage', context: context);

  @override
  bool get loadingCompliancePage {
    _$loadingCompliancePageAtom.reportRead();
    return super.loadingCompliancePage;
  }

  @override
  set loadingCompliancePage(bool value) {
    _$loadingCompliancePageAtom.reportWrite(value, super.loadingCompliancePage,
        () {
      super.loadingCompliancePage = value;
    });
  }

  late final _$fetchComplianceAsyncAction =
      AsyncAction('_ComplianceStore.fetchCompliance', context: context);

  @override
  Future<void> fetchCompliance() {
    return _$fetchComplianceAsyncAction.run(() => super.fetchCompliance());
  }

  late final _$onConfirmQuizAsyncAction =
      AsyncAction('_ComplianceStore.onConfirmQuiz', context: context);

  @override
  Future<void> onConfirmQuiz(VoidCallback onSuccess, VoidCallback onFail) {
    return _$onConfirmQuizAsyncAction
        .run(() => super.onConfirmQuiz(onSuccess, onFail));
  }

  late final _$_ComplianceStoreActionController =
      ActionController(name: '_ComplianceStore', context: context);

  @override
  void setLstAnswers(
      {required int section,
      required int index,
      required String questionId,
      required String alternativeId,
      required double score}) {
    final _$actionInfo = _$_ComplianceStoreActionController.startAction(
        name: '_ComplianceStore.setLstAnswers');
    try {
      return super.setLstAnswers(
          section: section,
          index: index,
          questionId: questionId,
          alternativeId: alternativeId,
          score: score);
    } finally {
      _$_ComplianceStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  bool isQuizComplete() {
    final _$actionInfo = _$_ComplianceStoreActionController.startAction(
        name: '_ComplianceStore.isQuizComplete');
    try {
      return super.isQuizComplete();
    } finally {
      _$_ComplianceStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
userManager: ${userManager},
complianceModel: ${complianceModel},
resultQuiz: ${resultQuiz},
lstAnswer: ${lstAnswer},
loadingCompliancePage: ${loadingCompliancePage}
    ''';
  }
}
