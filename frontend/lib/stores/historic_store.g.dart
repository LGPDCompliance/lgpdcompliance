// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'historic_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HistoricStore on _HistoricStore, Store {
  late final _$userManagerAtom =
      Atom(name: '_HistoricStore.userManager', context: context);

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

  late final _$loadingHistoricPageAtom =
      Atom(name: '_HistoricStore.loadingHistoricPage', context: context);

  @override
  bool get loadingHistoricPage {
    _$loadingHistoricPageAtom.reportRead();
    return super.loadingHistoricPage;
  }

  @override
  set loadingHistoricPage(bool value) {
    _$loadingHistoricPageAtom.reportWrite(value, super.loadingHistoricPage, () {
      super.loadingHistoricPage = value;
    });
  }

  late final _$listHistoricAtom =
      Atom(name: '_HistoricStore.listHistoric', context: context);

  @override
  List<HistoricModel>? get listHistoric {
    _$listHistoricAtom.reportRead();
    return super.listHistoric;
  }

  @override
  set listHistoric(List<HistoricModel>? value) {
    _$listHistoricAtom.reportWrite(value, super.listHistoric, () {
      super.listHistoric = value;
    });
  }

  late final _$dropdownValueAtom =
      Atom(name: '_HistoricStore.dropdownValue', context: context);

  @override
  String get dropdownValue {
    _$dropdownValueAtom.reportRead();
    return super.dropdownValue;
  }

  @override
  set dropdownValue(String value) {
    _$dropdownValueAtom.reportWrite(value, super.dropdownValue, () {
      super.dropdownValue = value;
    });
  }

  late final _$answerModelAtom =
      Atom(name: '_HistoricStore.answerModel', context: context);

  @override
  AnswerModel? get answerModel {
    _$answerModelAtom.reportRead();
    return super.answerModel;
  }

  @override
  set answerModel(AnswerModel? value) {
    _$answerModelAtom.reportWrite(value, super.answerModel, () {
      super.answerModel = value;
    });
  }

  late final _$getHistoricByUserIdAsyncAction =
      AsyncAction('_HistoricStore.getHistoricByUserId', context: context);

  @override
  Future<void> getHistoricByUserId() {
    return _$getHistoricByUserIdAsyncAction
        .run(() => super.getHistoricByUserId());
  }

  late final _$getAnswerByQuizAnswerIdAsyncAction =
      AsyncAction('_HistoricStore.getAnswerByQuizAnswerId', context: context);

  @override
  Future<void> getAnswerByQuizAnswerId({required String quizId}) {
    return _$getAnswerByQuizAnswerIdAsyncAction
        .run(() => super.getAnswerByQuizAnswerId(quizId: quizId));
  }

  late final _$_HistoricStoreActionController =
      ActionController(name: '_HistoricStore', context: context);

  @override
  void onChangeDropDown(String? value) {
    final _$actionInfo = _$_HistoricStoreActionController.startAction(
        name: '_HistoricStore.onChangeDropDown');
    try {
      return super.onChangeDropDown(value);
    } finally {
      _$_HistoricStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
userManager: ${userManager},
loadingHistoricPage: ${loadingHistoricPage},
listHistoric: ${listHistoric},
dropdownValue: ${dropdownValue},
answerModel: ${answerModel}
    ''';
  }
}
