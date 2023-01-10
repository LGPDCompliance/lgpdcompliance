// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'admin_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$AdminStore on _AdminStore, Store {
  late final _$userManagerAtom =
      Atom(name: '_AdminStore.userManager', context: context);

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

  late final _$loadingAdminPageAtom =
      Atom(name: '_AdminStore.loadingAdminPage', context: context);

  @override
  bool get loadingAdminPage {
    _$loadingAdminPageAtom.reportRead();
    return super.loadingAdminPage;
  }

  @override
  set loadingAdminPage(bool value) {
    _$loadingAdminPageAtom.reportWrite(value, super.loadingAdminPage, () {
      super.loadingAdminPage = value;
    });
  }

  late final _$nameAtom = Atom(name: '_AdminStore.name', context: context);

  @override
  String get name {
    _$nameAtom.reportRead();
    return super.name;
  }

  @override
  set name(String value) {
    _$nameAtom.reportWrite(value, super.name, () {
      super.name = value;
    });
  }

  late final _$graphicsModelAtom =
      Atom(name: '_AdminStore.graphicsModel', context: context);

  @override
  GraphicsModel? get graphicsModel {
    _$graphicsModelAtom.reportRead();
    return super.graphicsModel;
  }

  @override
  set graphicsModel(GraphicsModel? value) {
    _$graphicsModelAtom.reportWrite(value, super.graphicsModel, () {
      super.graphicsModel = value;
    });
  }

  late final _$dropdownValueAtom =
      Atom(name: '_AdminStore.dropdownValue', context: context);

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

  late final _$getUsersAsyncAction =
      AsyncAction('_AdminStore.getUsers', context: context);

  @override
  Future<void> getUsers() {
    return _$getUsersAsyncAction.run(() => super.getUsers());
  }

  late final _$getHistoricByUserIdAsyncAction =
      AsyncAction('_AdminStore.getHistoricByUserId', context: context);

  @override
  Future<void> getHistoricByUserId({required String userId}) {
    return _$getHistoricByUserIdAsyncAction
        .run(() => super.getHistoricByUserId(userId: userId));
  }

  late final _$getGraphicAsyncAction =
      AsyncAction('_AdminStore.getGraphic', context: context);

  @override
  Future<void> getGraphic() {
    return _$getGraphicAsyncAction.run(() => super.getGraphic());
  }

  late final _$_AdminStoreActionController =
      ActionController(name: '_AdminStore', context: context);

  @override
  void setName(String value) {
    final _$actionInfo =
        _$_AdminStoreActionController.startAction(name: '_AdminStore.setName');
    try {
      return super.setName(value);
    } finally {
      _$_AdminStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void onChangeDropDown(String? value) {
    final _$actionInfo = _$_AdminStoreActionController.startAction(
        name: '_AdminStore.onChangeDropDown');
    try {
      return super.onChangeDropDown(value);
    } finally {
      _$_AdminStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void filterUser(String value) {
    final _$actionInfo = _$_AdminStoreActionController.startAction(
        name: '_AdminStore.filterUser');
    try {
      return super.filterUser(value);
    } finally {
      _$_AdminStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
userManager: ${userManager},
loadingAdminPage: ${loadingAdminPage},
name: ${name},
graphicsModel: ${graphicsModel},
dropdownValue: ${dropdownValue}
    ''';
  }
}
