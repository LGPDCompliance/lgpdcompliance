// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_manager_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$UserManagerStore on _UserManagerStore, Store {
  Computed<bool>? _$isLoadingComputed;

  @override
  bool get isLoading =>
      (_$isLoadingComputed ??= Computed<bool>(() => super.isLoading,
              name: '_UserManagerStore.isLoading'))
          .value;
  Computed<String>? _$userTokenComputed;

  @override
  String get userToken =>
      (_$userTokenComputed ??= Computed<String>(() => super.userToken,
              name: '_UserManagerStore.userToken'))
          .value;
  Computed<bool>? _$isUserComputed;

  @override
  bool get isUser => (_$isUserComputed ??=
          Computed<bool>(() => super.isUser, name: '_UserManagerStore.isUser'))
      .value;

  late final _$isLoggedAtom =
      Atom(name: '_UserManagerStore.isLogged', context: context);

  @override
  bool get isLogged {
    _$isLoggedAtom.reportRead();
    return super.isLogged;
  }

  @override
  set isLogged(bool value) {
    _$isLoggedAtom.reportWrite(value, super.isLogged, () {
      super.isLogged = value;
    });
  }

  late final _$loadingAtom =
      Atom(name: '_UserManagerStore.loading', context: context);

  @override
  bool get loading {
    _$loadingAtom.reportRead();
    return super.loading;
  }

  @override
  set loading(bool value) {
    _$loadingAtom.reportWrite(value, super.loading, () {
      super.loading = value;
    });
  }

  late final _$userManagerAtom =
      Atom(name: '_UserManagerStore.userManager', context: context);

  @override
  CurrentUser? get userManager {
    _$userManagerAtom.reportRead();
    return super.userManager;
  }

  @override
  set userManager(CurrentUser? value) {
    _$userManagerAtom.reportWrite(value, super.userManager, () {
      super.userManager = value;
    });
  }

  late final _$userAtom =
      Atom(name: '_UserManagerStore.user', context: context);

  @override
  UserModel get user {
    _$userAtom.reportRead();
    return super.user;
  }

  @override
  set user(UserModel value) {
    _$userAtom.reportWrite(value, super.user, () {
      super.user = value;
    });
  }

  late final _$loadCurrentUserAsyncAction =
      AsyncAction('_UserManagerStore.loadCurrentUser', context: context);

  @override
  Future<void> loadCurrentUser() {
    return _$loadCurrentUserAsyncAction.run(() => super.loadCurrentUser());
  }

  late final _$logoutAsyncAction =
      AsyncAction('_UserManagerStore.logout', context: context);

  @override
  Future<void> logout() {
    return _$logoutAsyncAction.run(() => super.logout());
  }

  late final _$_UserManagerStoreActionController =
      ActionController(name: '_UserManagerStore', context: context);

  @override
  void setCurrentUser(CurrentUser value) {
    final _$actionInfo = _$_UserManagerStoreActionController.startAction(
        name: '_UserManagerStore.setCurrentUser');
    try {
      return super.setCurrentUser(value);
    } finally {
      _$_UserManagerStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setUser(UserModel value) {
    final _$actionInfo = _$_UserManagerStoreActionController.startAction(
        name: '_UserManagerStore.setUser');
    try {
      return super.setUser(value);
    } finally {
      _$_UserManagerStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
isLogged: ${isLogged},
loading: ${loading},
userManager: ${userManager},
user: ${user},
isLoading: ${isLoading},
userToken: ${userToken},
isUser: ${isUser}
    ''';
  }
}
