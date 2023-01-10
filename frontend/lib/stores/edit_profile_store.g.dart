// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edit_profile_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$EditProfileStore on _EditProfileStore, Store {
  Computed<bool>? _$formKeyValidComputed;

  @override
  bool get formKeyValid =>
      (_$formKeyValidComputed ??= Computed<bool>(() => super.formKeyValid,
              name: '_EditProfileStore.formKeyValid'))
          .value;
  Computed<bool>? _$nameValidComputed;

  @override
  bool get nameValid =>
      (_$nameValidComputed ??= Computed<bool>(() => super.nameValid,
              name: '_EditProfileStore.nameValid'))
          .value;
  Computed<bool>? _$emailValidComputed;

  @override
  bool get emailValid =>
      (_$emailValidComputed ??= Computed<bool>(() => super.emailValid,
              name: '_EditProfileStore.emailValid'))
          .value;

  late final _$formKeyAtom =
      Atom(name: '_EditProfileStore.formKey', context: context);

  @override
  GlobalKey<FormState> get formKey {
    _$formKeyAtom.reportRead();
    return super.formKey;
  }

  @override
  set formKey(GlobalKey<FormState> value) {
    _$formKeyAtom.reportWrite(value, super.formKey, () {
      super.formKey = value;
    });
  }

  late final _$nameAtom =
      Atom(name: '_EditProfileStore.name', context: context);

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
      Atom(name: '_EditProfileStore.email', context: context);

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

  late final _$loadingAtom =
      Atom(name: '_EditProfileStore.loading', context: context);

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

  late final _$updateUserAsyncAction =
      AsyncAction('_EditProfileStore.updateUser', context: context);

  @override
  Future<void> updateUser(VoidCallback onSuccess, VoidCallback onFail) {
    return _$updateUserAsyncAction
        .run(() => super.updateUser(onSuccess, onFail));
  }

  late final _$_EditProfileStoreActionController =
      ActionController(name: '_EditProfileStore', context: context);

  @override
  void setName(String value) {
    final _$actionInfo = _$_EditProfileStoreActionController.startAction(
        name: '_EditProfileStore.setName');
    try {
      return super.setName(value);
    } finally {
      _$_EditProfileStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setEmail(String value) {
    final _$actionInfo = _$_EditProfileStoreActionController.startAction(
        name: '_EditProfileStore.setEmail');
    try {
      return super.setEmail(value);
    } finally {
      _$_EditProfileStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
formKey: ${formKey},
name: ${name},
email: ${email},
loading: ${loading},
formKeyValid: ${formKeyValid},
nameValid: ${nameValid},
emailValid: ${emailValid}
    ''';
  }
}
