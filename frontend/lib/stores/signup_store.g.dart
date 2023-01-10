// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signup_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$SignUpStore on _SignUpStore, Store {
  Computed<bool>? _$nameValidComputed;

  @override
  bool get nameValid => (_$nameValidComputed ??=
          Computed<bool>(() => super.nameValid, name: '_SignUpStore.nameValid'))
      .value;
  Computed<bool>? _$emailValidComputed;

  @override
  bool get emailValid =>
      (_$emailValidComputed ??= Computed<bool>(() => super.emailValid,
              name: '_SignUpStore.emailValid'))
          .value;
  Computed<bool>? _$passValidComputed;

  @override
  bool get passValid => (_$passValidComputed ??=
          Computed<bool>(() => super.passValid, name: '_SignUpStore.passValid'))
      .value;

  late final _$nameAtom = Atom(name: '_SignUpStore.name', context: context);

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

  late final _$emailAtom = Atom(name: '_SignUpStore.email', context: context);

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

  late final _$passAtom = Atom(name: '_SignUpStore.pass', context: context);

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

  late final _$pass2Atom = Atom(name: '_SignUpStore.pass2', context: context);

  @override
  String get pass2 {
    _$pass2Atom.reportRead();
    return super.pass2;
  }

  @override
  set pass2(String value) {
    _$pass2Atom.reportWrite(value, super.pass2, () {
      super.pass2 = value;
    });
  }

  late final _$visiblePassAtom =
      Atom(name: '_SignUpStore.visiblePass', context: context);

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

  late final _$visiblePass2Atom =
      Atom(name: '_SignUpStore.visiblePass2', context: context);

  @override
  bool get visiblePass2 {
    _$visiblePass2Atom.reportRead();
    return super.visiblePass2;
  }

  @override
  set visiblePass2(bool value) {
    _$visiblePass2Atom.reportWrite(value, super.visiblePass2, () {
      super.visiblePass2 = value;
    });
  }

  late final _$loadingAtom =
      Atom(name: '_SignUpStore.loading', context: context);

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

  late final _$errorSignUpAtom =
      Atom(name: '_SignUpStore.errorSignUp', context: context);

  @override
  bool get errorSignUp {
    _$errorSignUpAtom.reportRead();
    return super.errorSignUp;
  }

  @override
  set errorSignUp(bool value) {
    _$errorSignUpAtom.reportWrite(value, super.errorSignUp, () {
      super.errorSignUp = value;
    });
  }

  late final _$signUpAsyncAction =
      AsyncAction('_SignUpStore.signUp', context: context);

  @override
  Future<void> signUp(VoidCallback onSuccess, VoidCallback onFail) {
    return _$signUpAsyncAction.run(() => super.signUp(onSuccess, onFail));
  }

  late final _$_SignUpStoreActionController =
      ActionController(name: '_SignUpStore', context: context);

  @override
  void setName(String value) {
    final _$actionInfo = _$_SignUpStoreActionController.startAction(
        name: '_SignUpStore.setName');
    try {
      return super.setName(value);
    } finally {
      _$_SignUpStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setEmail(String value) {
    final _$actionInfo = _$_SignUpStoreActionController.startAction(
        name: '_SignUpStore.setEmail');
    try {
      return super.setEmail(value);
    } finally {
      _$_SignUpStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setPass(String value) {
    final _$actionInfo = _$_SignUpStoreActionController.startAction(
        name: '_SignUpStore.setPass');
    try {
      return super.setPass(value);
    } finally {
      _$_SignUpStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setPass2(String value) {
    final _$actionInfo = _$_SignUpStoreActionController.startAction(
        name: '_SignUpStore.setPass2');
    try {
      return super.setPass2(value);
    } finally {
      _$_SignUpStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setVisiblePass() {
    final _$actionInfo = _$_SignUpStoreActionController.startAction(
        name: '_SignUpStore.setVisiblePass');
    try {
      return super.setVisiblePass();
    } finally {
      _$_SignUpStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setVisiblePass2() {
    final _$actionInfo = _$_SignUpStoreActionController.startAction(
        name: '_SignUpStore.setVisiblePass2');
    try {
      return super.setVisiblePass2();
    } finally {
      _$_SignUpStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
name: ${name},
email: ${email},
pass: ${pass},
pass2: ${pass2},
visiblePass: ${visiblePass},
visiblePass2: ${visiblePass2},
loading: ${loading},
errorSignUp: ${errorSignUp},
nameValid: ${nameValid},
emailValid: ${emailValid},
passValid: ${passValid}
    ''';
  }
}
