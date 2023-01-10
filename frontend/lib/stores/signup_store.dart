import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:lgpb_compliance/helpers/extensions.dart';
import 'package:lgpb_compliance/repository/auth_repository.dart';
import 'package:mobx/mobx.dart';

part 'signup_store.g.dart';

class SignUpStore = _SignUpStore with _$SignUpStore;

abstract class _SignUpStore with Store {
  @observable
  String name = '';

  @action
  void setName(String value) => name = value;

  @computed
  bool get nameValid => name.length > 1;

  String? get nameError {
    if (name.isEmpty) {
      return 'Campo obrigatório';
    } else if (!nameValid) {
      return 'Nome muito curto';
    }
    return null;
  }

  @observable
  String email = '';

  @action
  void setEmail(String value) => email = value;

  @computed
  bool get emailValid => email.isEmailValid();

  String? get emailError {
    if (email.isEmpty) {
      return 'Campo obrigatório';
    } else if (!emailValid) {
      return 'E-mail inválido';
    }
    return null;
  }

  @observable
  String pass = '';

  @action
  void setPass(String value) => pass = value;

  @observable
  String pass2 = '';

  @action
  void setPass2(String value) => pass2 = value;

  @computed
  bool get passValid => pass.length >= 6;

  bool get pass2Valid => pass2.length >= 6;

  String? get passError {
    if (pass.isEmpty) {
      return 'Campo obrigatório';
    } else if (!passValid) {
      return 'Senha muito curta';
    } else if (pass != pass2) {
      return 'Senhas diferentes';
    }
    return null;
  }

  @observable
  bool visiblePass = false;

  @observable
  bool visiblePass2 = false;

  @action
  void setVisiblePass() => visiblePass = !visiblePass;

  @action
  void setVisiblePass2() => visiblePass2 = !visiblePass2;

  @observable
  bool loading = false;

  @observable
  bool errorSignUp = false;

  @action
  Future<void> signUp(VoidCallback onSuccess, VoidCallback onFail) async {
    loading = true;
    try {
      await AuthRepository().signUp(name, email, pass);
      errorSignUp = false;
      onSuccess();
    } on DioError catch (_) {
      onFail();
      errorSignUp = true;
    }
    loading = false;
  }
}
