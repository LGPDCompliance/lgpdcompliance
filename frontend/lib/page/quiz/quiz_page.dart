import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:lgpb_compliance/components/custom_button.dart';
import 'package:lgpb_compliance/components/custom_text.dart';
import 'package:lgpb_compliance/helpers/constants.dart';
import 'package:lgpb_compliance/page/quiz/components/custom_question.dart';
import 'package:lgpb_compliance/stores/compliance_store.dart';
import 'package:lgpb_compliance/stores/page_store.dart';

class QuizPage extends StatelessWidget {
  QuizPage({Key? key}) : super(key: key);

  final PageStore pageStore = GetIt.I<PageStore>();
  final ComplianceStore compliance = GetIt.I<ComplianceStore>();
  final ScrollController controller = ScrollController();
  int cont = 0;

  @override
  Widget build(BuildContext context) {
    void _onFail() {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Algum problema aconteceu!"),
          backgroundColor: Colors.red,
          duration: Duration(seconds: 5),
        ),
      );
    }

    void _onFailQuiz() {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Responda todo o QUIZ!"),
          backgroundColor: Colors.red,
          duration: Duration(seconds: 5),
        ),
      );
    }

    void _onSuccess() {
      pageStore.setPage(4);
    }

    return Observer(
      builder: (_) {
        return compliance.loadingCompliancePage
            ? const Center(child: CircularProgressIndicator())
            : SingleChildScrollView(
                controller: controller,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    for (int i = 0;
                        i < compliance.complianceModel!.sections.length;
                        i++) ...[
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 30,
                          vertical: 10,
                        ),
                        child: CustomText(
                          text: compliance.complianceModel!.sections[i].title,
                          corText: primaryColor,
                          fontSize: 30,
                        ),
                      ),
                      for (int j = 0;
                          j <
                              compliance.complianceModel!.sections[i].questions
                                  .length;
                          j++) ...[
                        CustomQuestion(
                          numSection: i,
                          numQuestion: j + 1,
                          questions: compliance
                              .complianceModel!.sections[i].questions[j],
                        ),
                      ]
                    ],
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 50),
                        child: SizedBox(
                          width: 400,
                          child: CustomButton(
                            text: 'Finalizar Quiz',
                            onPressed: () {
                              compliance.isQuizComplete()
                                  ? _onFailQuiz()
                                  : compliance.onConfirmQuiz(
                                      _onSuccess, _onFail);
                            },
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              );
      },
    );
  }
}
