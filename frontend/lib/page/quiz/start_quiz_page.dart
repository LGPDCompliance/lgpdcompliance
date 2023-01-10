import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:lgpb_compliance/components/custom_button.dart';
import 'package:lgpb_compliance/components/custom_text.dart';
import 'package:lgpb_compliance/helpers/constants.dart';
import 'package:lgpb_compliance/stores/compliance_store.dart';
import 'package:lgpb_compliance/stores/page_store.dart';

class StartQuizPage extends StatelessWidget {
  StartQuizPage({Key? key}) : super(key: key);

  final PageStore pageStore = GetIt.I<PageStore>();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        controller: ScrollController(),
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const CustomText(
                text:
                    'Sua empresa está adequada a Lei Geral de Proteção de Dados?',
                fontSize: 20,
                textAlign: TextAlign.center,
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                height: 300,
                child: Image.asset(
                  'images/quiz.png',
                ),
              ),
              const CustomText(
                text: 'Ao concluir o quiz, descubra '
                    'o score e o nível de adequação.',
                fontSize: 20,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: const [
                      CustomText(
                        text: '0% - 29%',
                        fontSize: 20,
                      ),
                      CustomText(
                        text: '30% - 49%',
                        fontSize: 20,
                      ),
                      CustomText(
                        text: '50% - 69%',
                        fontSize: 20,
                      ),
                      CustomText(
                        text: '70% - 89%',
                        fontSize: 20,
                      ),
                      CustomText(
                        text: '90%  - 100%',
                        fontSize: 20,
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                      Icon(
                        Icons.arrow_right_alt_outlined,
                        color: primaryColor,
                      ),
                      Icon(
                        Icons.arrow_right_alt_outlined,
                        color: primaryColor,
                      ),
                      Icon(
                        Icons.arrow_right_alt_outlined,
                        color: primaryColor,
                      ),
                      Icon(
                        Icons.arrow_right_alt_outlined,
                        color: primaryColor,
                      ),
                      Icon(
                        Icons.arrow_right_alt_outlined,
                        color: primaryColor,
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      CustomText(
                        text: 'INICIAL',
                        fontSize: 20,
                      ),
                      CustomText(
                        text: 'BÁSICO',
                        fontSize: 20,
                      ),
                      CustomText(
                        text: 'INTERMEDIÁRIO',
                        fontSize: 20,
                      ),
                      CustomText(
                        text: 'EM APRIMORAMENTO',
                        fontSize: 20,
                        textOverflow: TextOverflow.ellipsis,
                      ),
                      CustomText(
                        text: 'APRIMORADO',
                        fontSize: 20,
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 50),
              const CustomText(
                text: 'Clique no botão abaixo para iniciar.',
                fontSize: 20,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 50),
              SizedBox(
                width: 180,
                height: 50,
                child: CustomButton(
                  text: 'Iniciar Quiz',
                  borderRadius: 20,
                  onPressed: () {
                    pageStore.setPage(3);
                    GetIt.I<ComplianceStore>().fetchCompliance();
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
