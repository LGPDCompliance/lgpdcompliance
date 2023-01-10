import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lgpb_compliance/components/custom_button.dart';
import 'package:lgpb_compliance/components/custom_text.dart';
import 'package:lgpb_compliance/helpers/constants.dart';
import 'package:lgpb_compliance/stores/edit_profile_store.dart';
import 'package:lgpb_compliance/stores/footer_store.dart';
import 'package:lgpb_compliance/stores/user_manager_store.dart';

class EditProfile extends StatelessWidget {
  EditProfile({Key? key}) : super(key: key);

  final EditProfileStore editProfileStore = EditProfileStore();

  final UserManagerStore userManagerStore = GetIt.I<UserManagerStore>();
  final FooterStore footerStore = FooterStore();

  @override
  Widget build(BuildContext context) {
    void _onFail() {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Erro ao alterar dados!"),
          backgroundColor: Colors.red,
          duration: Duration(seconds: 5),
        ),
      );
    }

    void _onSuccess() {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Dados alterados com sucesso!"),
          backgroundColor: Colors.green,
          duration: Duration(seconds: 2),
        ),
      );
    }

    void _onFailDelete() {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: CustomText(
              text:
                  'Falha ao solicitar exclusão da conta, teste novamente mais tarde!'),
          backgroundColor: Colors.red,
          duration: Duration(seconds: 5),
        ),
      );
    }

    void _onSuccessDelete() {}

    return CustomScrollView(
      physics: const ClampingScrollPhysics(),
      keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding:
                const EdgeInsets.only(left: 20, right: 20, bottom: 50, top: 50),
            child: Observer(
              builder: (_) {
                return Form(
                  key: editProfileStore.formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ConstrainedBox(
                        constraints: const BoxConstraints(maxWidth: 800),
                        child: TextFormField(
                          validator: (String? value) =>
                              editProfileStore.nameError,
                          enabled: !editProfileStore.loading,
                          onChanged: editProfileStore.setName,
                          cursorColor: Colors.grey.shade900,
                          keyboardType: TextInputType.text,
                          style: const TextStyle(color: Colors.black),
                          decoration: InputDecoration(
                            hintText: userManagerStore.user.name,
                            icon: const Icon(Icons.person),
                            filled: true,
                            floatingLabelBehavior: FloatingLabelBehavior.never,
                            fillColor: const Color(0xFFF3F3F3),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: const BorderSide(
                                  width: 1, color: Colors.grey),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: const BorderSide(
                                width: 1,
                                color: primaryColor,
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      ConstrainedBox(
                        constraints: const BoxConstraints(maxWidth: 800),
                        child: TextFormField(
                          validator: (String? value) =>
                              editProfileStore.emailError,
                          enabled: !editProfileStore.loading,
                          onChanged: editProfileStore.setEmail,
                          cursorColor: Colors.grey.shade900,
                          keyboardType: TextInputType.emailAddress,
                          style: const TextStyle(color: Colors.black),
                          decoration: InputDecoration(
                            hintText: userManagerStore.user.email,
                            icon: const Icon(Icons.email),
                            filled: true,
                            floatingLabelBehavior: FloatingLabelBehavior.never,
                            fillColor: const Color(0xFFF3F3F3),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: const BorderSide(
                                  width: 1, color: Colors.grey),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: const BorderSide(
                                  width: 1, color: primaryColor),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 40),
                      ConstrainedBox(
                        constraints: const BoxConstraints(maxWidth: 300),
                        child: CustomButton(
                          text: 'Salvar',
                          onPressed: () {
                            if (editProfileStore.formKeyValid) {
                              editProfileStore.updateUser(
                                _onSuccess,
                                _onFail,
                              );
                            }
                          },
                        ),
                      ),
                      const Spacer(),
                      RichText(
                        textAlign: TextAlign.end,
                        text: TextSpan(
                          text: 'Deseja solicitar exclusão da conta? ',
                          style: GoogleFonts.lexendDeca(
                            color: Colors.grey.shade700,
                            fontSize: 12,
                          ),
                          children: [
                            TextSpan(
                              text: 'Clique aqui',
                              style: GoogleFonts.lexendDeca(
                                  color: Colors.grey.shade700,
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  showDialog<String>(
                                    context: context,
                                    builder: (BuildContext context) =>
                                        AlertDialog(
                                      title: const CustomText(
                                        text:
                                            'Tem certeza que deseja excluir sua conta?',
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                      ),
                                      content: const CustomText(
                                        text:
                                            'Ao confirmar, não será possível reverter essa ação e em até 3 dias úteis suas informações serão deletadas da nossa base de dados.',
                                        fontSize: 13,
                                      ),
                                      actions: <Widget>[
                                        TextButton(
                                          onPressed: () =>
                                              Navigator.pop(context),
                                          child: const CustomText(
                                            text: 'Cancelar',
                                            fontSize: 13,
                                          ),
                                        ),
                                        TextButton(
                                          onPressed: () {
                                            footerStore.setEmail(
                                                userManagerStore.user.email ??
                                                    '');
                                            footerStore.setName(
                                                userManagerStore.user.name ??
                                                    '');
                                            footerStore.setMessage(
                                                'O usuário ${userManagerStore.user.name ?? ''} deseja excluir seu perfil.');
                                            footerStore.setSubject(
                                                '== Excluir perfil ==');
                                            footerStore.sendEmail(
                                                _onSuccessDelete,
                                                _onFailDelete);

                                            Navigator.pop(context);
                                          },
                                          child: const CustomText(
                                            text: 'Confirmar',
                                            fontSize: 13,
                                          ),
                                        ),
                                      ],
                                    ),
                                  );
                                },
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
