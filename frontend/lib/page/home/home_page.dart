import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:lgpb_compliance/components/custom_text.dart';
import 'package:lgpb_compliance/components/custom_textformfield.dart';
import 'package:lgpb_compliance/helpers/constants.dart';
import 'package:lgpb_compliance/page/home/components/body_component.dart';
import 'package:lgpb_compliance/page/home/components/head_component.dart';
import 'package:lgpb_compliance/stores/footer_store.dart';
import 'package:lgpb_compliance/stores/news_store.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final _formKey = GlobalKey<FormState>();
  final FooterStore footerStore = FooterStore();
  final name = TextEditingController();
  final email = TextEditingController();
  final subject = TextEditingController();
  final message = TextEditingController();

  final NewsStore newsStore = GetIt.I<NewsStore>();

  @override
  Widget build(BuildContext context) {
    ScrollController listScrollController = ScrollController();

    void _onFail() {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content:
              CustomText(text: 'Falha ao manda menssagem, tente novamente!'),
          backgroundColor: Colors.red,
          duration: Duration(seconds: 5),
        ),
      );
    }

    void _onSuccess() {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Menssagem enviada com sucesso!"),
          backgroundColor: Colors.green,
          duration: Duration(seconds: 2),
        ),
      );
    }

    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color(0xFFF3F3F3),
      body: SingleChildScrollView(
        controller: listScrollController,
        child: Column(
          children: [
            HeadComponent(
              onPressed: () {
                if (listScrollController.hasClients) {
                  listScrollController.animateTo(
                    size.height > 600 ? size.height : 600,
                    duration: const Duration(seconds: 1),
                    curve: Curves.ease,
                  );
                }
              },
            ),
            const BodyComponent(),
            Container(
              color: primaryColor,
              width: double.infinity,
              padding: const EdgeInsets.all(20),
              child: Observer(
                builder: (_) {
                  return Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        const CustomText(
                          text: 'Entre em contato',
                          corText: Colors.white,
                          fontSize: 23,
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        ConstrainedBox(
                          constraints: const BoxConstraints(maxWidth: 1300),
                          child: Row(
                            children: [
                              Expanded(
                                child: CustomTextFormField(
                                  isPasswordType: false,
                                  text: 'Nome',
                                  textInputType: TextInputType.name,
                                  enabled: true,
                                  onChanged: footerStore.setName,
                                  validator: (String? value) =>
                                      footerStore.nameError,
                                  controller: footerStore.nameController,
                                ),
                              ),
                              const SizedBox(width: 20),
                              Expanded(
                                child: CustomTextFormField(
                                  isPasswordType: false,
                                  text: 'Email',
                                  textInputType: TextInputType.emailAddress,
                                  enabled: true,
                                  onChanged: footerStore.setEmail,
                                  validator: (String? value) =>
                                      footerStore.emailError,
                                  controller: footerStore.emailController,
                                ),
                              )
                            ],
                          ),
                        ),
                        const SizedBox(height: 20),
                        ConstrainedBox(
                          constraints: const BoxConstraints(maxWidth: 1300),
                          child: CustomTextFormField(
                            isPasswordType: false,
                            text: 'Assunto',
                            textInputType: TextInputType.text,
                            enabled: true,
                            onChanged: footerStore.setSubject,
                            validator: (String? value) =>
                                footerStore.subjectError,
                            controller: footerStore.subjectController,
                          ),
                        ),
                        const SizedBox(height: 20),
                        ConstrainedBox(
                          constraints: const BoxConstraints(maxWidth: 1300),
                          child: CustomTextFormField(
                            isPasswordType: false,
                            text: 'Mensagem',
                            textInputType: TextInputType.multiline,
                            enabled: true,
                            onChanged: footerStore.setMessage,
                            validator: (String? value) =>
                                footerStore.messageError,
                            maxLines: 3,
                            controller: footerStore.messageController,
                          ),
                        ),
                        const SizedBox(height: 30),
                        footerStore.loading
                            ? const CircularProgressIndicator(
                                valueColor:
                                    AlwaysStoppedAnimation<Color>(Colors.white),
                              )
                            : SizedBox(
                                width: 300,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(4),
                                  child: Stack(
                                    children: <Widget>[
                                      Positioned.fill(
                                        child: Container(
                                          decoration: const BoxDecoration(
                                              color: Color(0xff0B6BBF)),
                                        ),
                                      ),
                                      TextButton(
                                        style: TextButton.styleFrom(
                                          padding: const EdgeInsets.all(16.0),
                                          primary: Colors.white,
                                        ),
                                        onPressed: () async {
                                          if (_formKey.currentState!
                                              .validate()) {
                                            footerStore.sendEmail(
                                                _onSuccess, _onFail);
                                          }
                                        },
                                        child: const Center(
                                          child: CustomText(
                                            text: 'Enviar mensagem',
                                            corText: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                        const SizedBox(height: 30),
                        Image.asset(
                          'images/logo_branco.png',
                          scale: 5,
                        )
                      ],
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
