import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lgpb_compliance/components/custom_text.dart';
import 'package:lgpb_compliance/helpers/constants.dart';
import 'package:lgpb_compliance/stores/compliance_store.dart';
import 'package:lgpb_compliance/stores/page_store.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class ResultQuizPage extends StatelessWidget {
  ResultQuizPage({Key? key}) : super(key: key);

  final PageStore pageStore = GetIt.I<PageStore>();
  final ComplianceStore complianceStore = GetIt.I<ComplianceStore>();

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) {
        return ListView(
          controller: ScrollController(),
          children: [
            const SizedBox(height: 50),
            CircularPercentIndicator(
              radius: 100,
              lineWidth: 20,
              percent: complianceStore.resultQuiz!.score / 100,
              progressColor: primaryColor,
              circularStrokeCap: CircularStrokeCap.round,
              backgroundColor: const Color(0xFF0F88F2).withOpacity(0.1),
              center: CustomText(
                text: complianceStore.resultQuiz!.score.toString() + '%',
                corText: primaryColor,
                fontSize: 20,
              ),
            ),
            const SizedBox(height: 80),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: Text.rich(
                TextSpan(
                  children: <TextSpan>[
                    TextSpan(
                        text: 'Sua empresa atingiu um score de ',
                        style: GoogleFonts.lexendDeca(
                          fontSize: 25,
                        )),
                    TextSpan(
                      text: '${complianceStore.resultQuiz!.score.toString()}%',
                      style: GoogleFonts.lexendDeca(
                        fontSize: 25,
                        color: primaryColor,
                      ),
                    ),
                    TextSpan(
                      text: ' e pertence ao nível ',
                      style: GoogleFonts.lexendDeca(
                        fontSize: 25,
                      ),
                    ),
                    TextSpan(
                      text: complianceStore.resultQuiz!.adequacy,
                      style: GoogleFonts.lexendDeca(
                        fontSize: 25,
                        color: primaryColor,
                      ),
                    ),
                    TextSpan(
                      text: ' de adequação a LGPD.',
                      style: GoogleFonts.lexendDeca(
                        fontSize: 25,
                      ),
                    ),
                    TextSpan(
                      text:
                          ' Para atingir pontuação máxima fique atento aos seguintes pontos:',
                      style: GoogleFonts.lexendDeca(
                        fontSize: 25,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            ListView.separated(
              shrinkWrap: true,
              physics: const ClampingScrollPhysics(),
              controller: ScrollController(),
              itemCount: complianceStore.resultQuiz!.feedback!.length,
              padding: const EdgeInsets.all(50),
              itemBuilder: (context, index) {
                final section = complianceStore.resultQuiz!.feedback![index];
                return Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20, bottom: 10),
                      child: CustomText(
                        text: '${section.sectionTitle}:',
                        corText: primaryColor,
                        fontSize: 20,
                      ),
                    ),
                    section.sectionFeedbacks.isEmpty
                        ? const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: CustomText(
                              text:
                                  'Parabéns! Essa seção está em conformidade com a lei.',
                            ),
                          )
                        : ListView.builder(
                            controller: ScrollController(),
                            shrinkWrap: true,
                            physics: const ClampingScrollPhysics(),
                            itemCount: section.sectionFeedbacks.length,
                            itemBuilder: (context, index) {
                              final feedbacks = section.sectionFeedbacks[index];
                              return Padding(
                                padding: const EdgeInsets.all(8),
                                child: CustomText(
                                  text: feedbacks.description,
                                ),
                              );
                            },
                          ),
                  ],
                );
              },
              separatorBuilder: (BuildContext context, int index) =>
                  const SizedBox(
                height: 5,
              ),
            ),
          ],
        );
      },
    );
  }
}
