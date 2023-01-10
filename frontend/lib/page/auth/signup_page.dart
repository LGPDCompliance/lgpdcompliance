import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lgpb_compliance/components/custom_button.dart';
import 'package:lgpb_compliance/components/custom_text.dart';
import 'package:lgpb_compliance/components/custom_textformfield.dart';
import 'package:lgpb_compliance/helpers/constants.dart';
import 'package:lgpb_compliance/page/auth/components/alert_dialog.dart';
import 'package:lgpb_compliance/page/auth/components/left_component.dart';
import 'package:lgpb_compliance/stores/signup_store.dart';
import 'package:responsive_framework/responsive_framework.dart';

class SignUpPage extends StatelessWidget {
  SignUpPage({Key? key}) : super(key: key);

  final SignUpStore signUpStore = SignUpStore();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final isMobile = ResponsiveWrapper.of(context).isMobile ||
        MediaQuery.of(context).size.width == 450;
    void _onFail() {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: CustomText(
            text: 'Algo de errado aconteceu. Tente novamente!',
          ),
          backgroundColor: Colors.red,
          duration: Duration(seconds: 5),
        ),
      );
    }

    void _onSuccess() {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: CustomText(
            text: 'Conta criada com sucesso!',
          ),
          backgroundColor: Colors.green,
          duration: Duration(seconds: 5),
        ),
      );
      Navigator.pop(context);
    }

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: isMobile
          ? AppBar(
              iconTheme: const IconThemeData(color: primaryColor),
              backgroundColor: Colors.white,
              elevation: 0,
            )
          : null,
      body: Center(
        child: SingleChildScrollView(
          child: Row(
            children: [
              Visibility(
                visible: isMobile ? false : true,
                child: const LeftComponent(),
              ),
              Observer(
                builder: (_) {
                  return Expanded(
                    flex: 4,
                    child: signUpStore.loading
                        ? const Center(child: CircularProgressIndicator())
                        : Form(
                            key: _formKey,
                            child: Padding(
                              padding: const EdgeInsets.all(40),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    height: 200,
                                    child: Image.asset(
                                      'images/logo.png',
                                    ),
                                  ),
                                  const SizedBox(height: 60),
                                  const CustomText(
                                      text: 'Cadastre-se', fontSize: 27),
                                  const SizedBox(height: 20),
                                  CustomTextFormField(
                                    isPasswordType: false,
                                    icon: Icons.person,
                                    text: 'Nome completo',
                                    textInputType: TextInputType.emailAddress,
                                    enabled: true,
                                    onChanged: signUpStore.setName,
                                    validator: (String? value) =>
                                        signUpStore.nameError,
                                  ),
                                  const SizedBox(height: 20),
                                  CustomTextFormField(
                                    isPasswordType: false,
                                    icon: Icons.email,
                                    text: 'Email',
                                    textInputType: TextInputType.emailAddress,
                                    enabled: true,
                                    onChanged: signUpStore.setEmail,
                                    validator: (String? value) =>
                                        signUpStore.emailError,
                                  ),
                                  const SizedBox(height: 20),
                                  CustomTextFormField(
                                    isPasswordType:
                                        signUpStore.visiblePass ? false : true,
                                    icon: Icons.lock,
                                    text: 'Senha',
                                    textInputType: TextInputType.text,
                                    enabled: true,
                                    onChanged: signUpStore.setPass,
                                    validator: (String? value) =>
                                        signUpStore.passError,
                                    suffixIcon: IconButton(
                                      icon: signUpStore.visiblePass
                                          ? const Icon(Icons.visibility)
                                          : const Icon(Icons.visibility_off),
                                      onPressed: signUpStore.setVisiblePass,
                                    ),
                                  ),
                                  const SizedBox(height: 20),
                                  CustomTextFormField(
                                    isPasswordType:
                                        signUpStore.visiblePass2 ? false : true,
                                    icon: Icons.lock,
                                    text: 'Confirme sua senha',
                                    textInputType: TextInputType.text,
                                    enabled: true,
                                    onChanged: signUpStore.setPass2,
                                    validator: (String? value) =>
                                        signUpStore.passError,
                                    suffixIcon: IconButton(
                                      icon: signUpStore.visiblePass2
                                          ? const Icon(Icons.visibility)
                                          : const Icon(Icons.visibility_off),
                                      onPressed: signUpStore.setVisiblePass2,
                                    ),
                                  ),
                                  const SizedBox(height: 20),
                                  RichText(
                                    textAlign: TextAlign.center,
                                    text: TextSpan(
                                      text:
                                          'Ao se cadastrar, você concorda com nossos ',
                                      style: GoogleFonts.lexendDeca(
                                        color: Colors.grey.shade800,
                                        fontSize: 12,
                                      ),
                                      children: [
                                        TextSpan(
                                          text:
                                              'Termos e Condições de Uso do Site',
                                          style: GoogleFonts.lexendDeca(
                                            color: Colors.grey.shade800,
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold,
                                          ),
                                          recognizer: TapGestureRecognizer()
                                            ..onTap = () {
                                              alertDialog(context: context);
                                            },
                                        )
                                      ],
                                    ),
                                  ),
                                  const SizedBox(height: 20),
                                  CustomButton(
                                    text: 'Cadastrar',
                                    onPressed: () {
                                      if (_formKey.currentState!.validate()) {
                                        signUpStore.signUp(_onSuccess, _onFail);
                                      }
                                    },
                                  )
                                ],
                              ),
                            ),
                          ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
