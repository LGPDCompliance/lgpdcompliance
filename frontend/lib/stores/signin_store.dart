import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:lgpb_compliance/helpers/extensions.dart';
import 'package:lgpb_compliance/models/user_model.dart';
import 'package:lgpb_compliance/repository/auth_repository.dart';
import 'package:lgpb_compliance/stores/page_store.dart';
import 'package:lgpb_compliance/stores/user_manager_store.dart';
import 'package:mobx/mobx.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'signin_store.g.dart';

class SignInStore = _SignInStore with _$SignInStore;

abstract class _SignInStore with Store {
  @observable
  String email = '';

  @action
  void setEmail(String value) => email = value;

  @computed
  bool get emailValid => email.isEmailValid();
  String? get emailError {
    if (!emailValid) {
      return 'Digite um email válido';
    } else if (email.isEmpty) {
      return 'Campo obrigatório';
    }
    return null;
  }

  @observable
  String pass = '';

  @action
  void setPass(String value) => pass = value;

  @computed
  bool get passValid => pass.length >= 6;

  String? get passError {
    if (pass.isEmpty) {
      return 'Campo obrigatório';
    }
    return null;
  }

  @observable
  bool visiblePass = false;

  @action
  void setVisiblePass() => visiblePass = !visiblePass;

  @observable
  bool loading = false;

  @observable
  PageStore pageStore = GetIt.I<PageStore>();

  @action
  Future<void> signIn(VoidCallback onSuccess, VoidCallback onFail) async {
    loading = true;
    try {
      final SharedPreferences prefs = await SharedPreferences.getInstance();
      CurrentUser user = await AuthRepository().signIn(
        UserModel(
          email: email,
          password: pass,
        ),
      );
      GetIt.I<UserManagerStore>().setCurrentUser(user);
      prefs.setString('accessToken', user.accessToken);
      prefs.setString('id', user.currentUser.id!);
      onSuccess();
    } catch (e) {
      clear();
      loading = false;
      onFail();
    }
    loading = false;
  }

  void clear() {
    email = '';
    pass = '';
  }
}
