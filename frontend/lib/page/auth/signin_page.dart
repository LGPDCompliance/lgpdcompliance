import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lgpb_compliance/components/custom_button.dart';
import 'package:lgpb_compliance/components/custom_textformfield.dart';
import 'package:lgpb_compliance/helpers/constants.dart';
import 'package:lgpb_compliance/page/auth/components/left_component.dart';
import 'package:lgpb_compliance/page/auth/signup_page.dart';
import 'package:lgpb_compliance/page/base/base_%20page.dart';
import 'package:lgpb_compliance/stores/signin_store.dart';
import 'package:responsive_framework/responsive_wrapper.dart';

class SignInPage extends StatelessWidget {
  SignInPage({Key? key}) : super(key: key);

  final SignInStore signInStore = SignInStore();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final isMobile = ResponsiveWrapper.of(context).isMobile ||
        MediaQuery.of(context).size.width == 450;

    void _onFail() {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text(
            "Email ou senha incorreta!",
          ),
          backgroundColor: Colors.red,
          duration: Duration(seconds: 5),
        ),
      );
    }

    void _onSuccess() {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text(
            "Login realizado com sucesso!",
          ),
          backgroundColor: Colors.green,
          duration: Duration(seconds: 2),
        ),
      );
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => const BasePage()));
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
                    child: signInStore.loading
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
                                  CustomTextFormField(
                                    isPasswordType: false,
                                    icon: Icons.email,
                                    text: 'Email',
                                    textInputType: TextInputType.emailAddress,
                                    onChanged: signInStore.setEmail,
                                    enabled: !signInStore.loading,
                                    validator: (String? value) =>
                                        signInStore.emailError,
                                  ),
                                  const SizedBox(height: 20),
                                  CustomTextFormField(
                                    isPasswordType: !signInStore.visiblePass,
                                    icon: Icons.lock,
                                    text: 'Senha',
                                    textInputType: TextInputType.emailAddress,
                                    onChanged: signInStore.setPass,
                                    enabled: !signInStore.loading,
                                    validator: (String? value) =>
                                        signInStore.passError,
                                    suffixIcon: IconButton(
                                      icon: signInStore.visiblePass
                                          ? const Icon(Icons.visibility_off)
                                          : const Icon(Icons.visibility),
                                      onPressed: signInStore.setVisiblePass,
                                    ),
                                  ),
                                  const SizedBox(height: 8),
                                  Align(
                                    alignment: Alignment.centerRight,
                                    child: RichText(
                                      textAlign: TextAlign.end,
                                      text: TextSpan(
                                        text: 'Não tem conta? ',
                                        style: GoogleFonts.lexendDeca(
                                          color: Colors.black,
                                          fontSize: 13,
                                        ),
                                        children: [
                                          TextSpan(
                                            text: 'Cadastre-se',
                                            style: GoogleFonts.lexendDeca(
                                              color: Colors.black,
                                              fontSize: 14,
                                            ),
                                            recognizer: TapGestureRecognizer()
                                              ..onTap = () {
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                    builder: (context) =>
                                                        SignUpPage(),
                                                  ),
                                                );
                                              },
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 50),
                                  CustomButton(
                                    text: 'Fazer Login',
                                    onPressed: () {
                                      if (_formKey.currentState!.validate()) {
                                        signInStore.signIn(
                                          _onSuccess,
                                          _onFail,
                                        );
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
