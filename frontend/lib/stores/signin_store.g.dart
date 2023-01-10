// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signin_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$SignInStore on _SignInStore, Store {
  Computed<bool>? _$emailValidComputed;

  @override
  bool get emailValid =>
      (_$emailValidComputed ??= Computed<bool>(() => super.emailValid,
              name: '_SignInStore.emailValid'))
          .value;
  Computed<bool>? _$passValidComputed;

  @override
  bool get passValid => (_$passValidComputed ??=
          Computed<bool>(() => super.passValid, name: '_SignInStore.passValid'))
      .value;

  late final _$emailAtom = Atom(name: '_SignInStore.email', context: context);

  @override
  String get email {
    _$emailAtom.reportRead();
    return super.email;
  }

  @override
  set email(String value) {
    _$emailAtom.reportWrite(value, super.email, () {
      super.email = value;
    });
  }

  late final _$passAtom = Atom(name: '_SignInStore.pass', context: context);

  @override
  String get pass {
    _$passAtom.reportRead();
    return super.pass;
  }

  @override
  set pass(String value) {
    _$passAtom.reportWrite(value, super.pass, () {
      super.pass = value;
    });
  }

  late final _$visiblePassAtom =
      Atom(name: '_SignInStore.visiblePass', context: context);

  @override
  bool get visiblePass {
    _$visiblePassAtom.reportRead();
    return super.visiblePass;
  }

  @override
  set visiblePass(bool value) {
    _$visiblePassAtom.reportWrite(value, super.visiblePass, () {
      super.visiblePass = value;
    });
  }

  late final _$loadingAtom =
      Atom(name: '_SignInStore.loading', context: context);

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

  late final _$pageStoreAtom =
      Atom(name: '_SignInStore.pageStore', context: context);

  @override
  PageStore get pageStore {
    _$pageStoreAtom.reportRead();
    return super.pageStore;
  }

  @override
  set pageStore(PageStore value) {
    _$pageStoreAtom.reportWrite(value, super.pageStore, () {
      super.pageStore = value;
    });
  }

  late final _$signInAsyncAction =
      AsyncAction('_SignInStore.signIn', context: context);

  @override
  Future<void> signIn(VoidCallback onSuccess, VoidCallback onFail) {
    return _$signInAsyncAction.run(() => super.signIn(onSuccess, onFail));
  }

  late final _$_SignInStoreActionController =
      ActionController(name: '_SignInStore', context: context);

  @override
  void setEmail(String value) {
    final _$actionInfo = _$_SignInStoreActionController.startAction(
        name: '_SignInStore.setEmail');
    try {
      return super.setEmail(value);
    } finally {
      _$_SignInStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setPass(String value) {
    final _$actionInfo = _$_SignInStoreActionController.startAction(
        name: '_SignInStore.setPass');
    try {
      return super.setPass(value);
    } finally {
      _$_SignInStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setVisiblePass() {
    final _$actionInfo = _$_SignInStoreActionController.startAction(
        name: '_SignInStore.setVisiblePass');
    try {
      return super.setVisiblePass();
    } finally {
      _$_SignInStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
email: ${email},
pass: ${pass},
visiblePass: ${visiblePass},
loading: ${loading},
pageStore: ${pageStore},
emailValid: ${emailValid},
passValid: ${passValid}
    ''';
  }
}
