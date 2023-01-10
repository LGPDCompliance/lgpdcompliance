import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:lgpb_compliance/helpers/extensions.dart';
import 'package:lgpb_compliance/models/user_model.dart';
import 'package:lgpb_compliance/repository/auth_repository.dart';
import 'package:lgpb_compliance/stores/user_manager_store.dart';
import 'package:mobx/mobx.dart';

part 'edit_profile_store.g.dart';

class EditProfileStore = _EditProfileStore with _$EditProfileStore;

abstract class _EditProfileStore with Store {
  @observable
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @computed
  bool get formKeyValid => formKey.currentState!.validate();

  @observable
  String name = GetIt.I<UserManagerStore>().user.name!;

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
  String email = GetIt.I<UserManagerStore>().user.email!;

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
  bool loading = false;

  @action
  Future<void> updateUser(VoidCallback onSuccess, VoidCallback onFail) async {
    loading = true;
    try {
      UserModel userModel = await AuthRepository().updateUser(
        GetIt.I<UserManagerStore>().user.id!,
        name,
        email,
      );
      GetIt.I<UserManagerStore>().setUser(userModel);
      onSuccess();
    } on DioError catch (e) {
      loading = false;
      onFail();
    }
    loading = false;
  }
}
