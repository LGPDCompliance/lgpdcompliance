// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'footer_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$FooterStore on _FooterStoreBase, Store {
  Computed<bool>? _$nameValidComputed;

  @override
  bool get nameValid =>
      (_$nameValidComputed ??= Computed<bool>(() => super.nameValid,
              name: '_FooterStoreBase.nameValid'))
          .value;
  Computed<bool>? _$emailValidComputed;

  @override
  bool get emailValid =>
      (_$emailValidComputed ??= Computed<bool>(() => super.emailValid,
              name: '_FooterStoreBase.emailValid'))
          .value;
  Computed<bool>? _$subjectValidComputed;

  @override
  bool get subjectValid =>
      (_$subjectValidComputed ??= Computed<bool>(() => super.subjectValid,
              name: '_FooterStoreBase.subjectValid'))
          .value;
  Computed<bool>? _$messageValidComputed;

  @override
  bool get messageValid =>
      (_$messageValidComputed ??= Computed<bool>(() => super.messageValid,
              name: '_FooterStoreBase.messageValid'))
          .value;

  late final _$nameAtom = Atom(name: '_FooterStoreBase.name', context: context);

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

  late final _$emailAtom =
      Atom(name: '_FooterStoreBase.email', context: context);

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

  late final _$subjectAtom =
      Atom(name: '_FooterStoreBase.subject', context: context);

  @override
  String get subject {
    _$subjectAtom.reportRead();
    return super.subject;
  }

  @override
  set subject(String value) {
    _$subjectAtom.reportWrite(value, super.subject, () {
      super.subject = value;
    });
  }

  late final _$messageAtom =
      Atom(name: '_FooterStoreBase.message', context: context);

  @override
  String get message {
    _$messageAtom.reportRead();
    return super.message;
  }

  @override
  set message(String value) {
    _$messageAtom.reportWrite(value, super.message, () {
      super.message = value;
    });
  }

  late final _$loadingAtom =
      Atom(name: '_FooterStoreBase.loading', context: context);

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

  late final _$nameControllerAtom =
      Atom(name: '_FooterStoreBase.nameController', context: context);

  @override
  TextEditingController get nameController {
    _$nameControllerAtom.reportRead();
    return super.nameController;
  }

  @override
  set nameController(TextEditingController value) {
    _$nameControllerAtom.reportWrite(value, super.nameController, () {
      super.nameController = value;
    });
  }

  late final _$sendEmailAsyncAction =
      AsyncAction('_FooterStoreBase.sendEmail', context: context);

  @override
  Future<void> sendEmail(VoidCallback onSuccess, VoidCallback onFail) {
    return _$sendEmailAsyncAction.run(() => super.sendEmail(onSuccess, onFail));
  }

  late final _$_FooterStoreBaseActionController =
      ActionController(name: '_FooterStoreBase', context: context);

  @override
  void setName(String value) {
    final _$actionInfo = _$_FooterStoreBaseActionController.startAction(
        name: '_FooterStoreBase.setName');
    try {
      return super.setName(value);
    } finally {
      _$_FooterStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setEmail(String value) {
    final _$actionInfo = _$_FooterStoreBaseActionController.startAction(
        name: '_FooterStoreBase.setEmail');
    try {
      return super.setEmail(value);
    } finally {
      _$_FooterStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setSubject(String value) {
    final _$actionInfo = _$_FooterStoreBaseActionController.startAction(
        name: '_FooterStoreBase.setSubject');
    try {
      return super.setSubject(value);
    } finally {
      _$_FooterStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setMessage(String value) {
    final _$actionInfo = _$_FooterStoreBaseActionController.startAction(
        name: '_FooterStoreBase.setMessage');
    try {
      return super.setMessage(value);
    } finally {
      _$_FooterStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void clear() {
    final _$actionInfo = _$_FooterStoreBaseActionController.startAction(
        name: '_FooterStoreBase.clear');
    try {
      return super.clear();
    } finally {
      _$_FooterStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
name: ${name},
email: ${email},
subject: ${subject},
message: ${message},
loading: ${loading},
nameController: ${nameController},
nameValid: ${nameValid},
emailValid: ${emailValid},
subjectValid: ${subjectValid},
messageValid: ${messageValid}
    ''';
  }
}
