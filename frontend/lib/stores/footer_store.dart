import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:lgpb_compliance/helpers/extensions.dart';
import 'package:mobx/mobx.dart';

part 'footer_store.g.dart';

class FooterStore = _FooterStoreBase with _$FooterStore;

abstract class _FooterStoreBase with Store {
  @observable
  String name = '';

  @action
  void setName(String value) => name = value;

  @computed
  bool get nameValid => name.length > 1;

  String? get nameError {
    if (name.isEmpty) {
      return 'Campo obrigatório';
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
    if (!emailValid) {
      return 'Digite um email válido';
    } else if (email.isEmpty) {
      return 'Campo obrigatório';
    }
    return null;
  }

  @observable
  String subject = '';

  @action
  void setSubject(String value) => subject = value;

  @computed
  bool get subjectValid => subject.length > 1;

  String? get subjectError {
    if (subject.isEmpty) {
      return 'Campo obrigatório';
    }
    return null;
  }

  @observable
  String message = '';

  @action
  void setMessage(String value) => message = value;

  @computed
  bool get messageValid => message.length > 1;

  String? get messageError {
    if (message.isEmpty) {
      return 'Campo obrigatório';
    }
    return null;
  }

  @observable
  bool loading = false;

  @observable
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController subjectController = TextEditingController();
  TextEditingController messageController = TextEditingController();

  @action
  void clear() {
    setEmail('');
    setName('');
    setSubject('');
    setMessage('');
    nameController.clear();
    subjectController.clear();
    emailController.clear();
    messageController.clear();
  }

  @action
  Future<void> sendEmail(VoidCallback onSuccess, VoidCallback onFail) async {
    final Dio _dio = Dio();

    try {
      loading = true;
      await _dio.post(
        'https://api.emailjs.com/api/v1.0/email/send',
        data: {
          'service_id': 'service_od3vt26',
          'template_id': 'template_fwcesoh',
          'user_id': 'Scs2KjoBLoRGctYGo',
          'accessToken': 'j4e-sEk7Ulr4v0HkdS5GQ',
          'template_params': {
            'user_name': name,
            'user_email': email,
            'user_subject': subject,
            'user_message': message,
          },
        },
        options: Options(
          headers: {
            'Content-Type': 'application/json',
          },
        ),
      );
      clear();
      onSuccess();
      loading = false;
    } on DioError catch (error) {
      print(error.message);
      loading = false;
      onFail();
    }
  }
}
