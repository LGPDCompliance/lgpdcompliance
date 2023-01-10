import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lgpb_compliance/components/custom_text.dart';
import 'package:lgpb_compliance/helpers/constants.dart';
import 'package:lgpb_compliance/models/question_model.dart';

class CustomAnswerQuestion extends StatelessWidget {
  const CustomAnswerQuestion({
    required this.numQuestion,
    required this.questions,
    Key? key,
  }) : super(key: key);

  final int numQuestion;
  final QuestionModel questions;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, left: 30, right: 30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomText(
            text: numQuestion.toString() + '. ' + questions.title,
            textAlign: TextAlign.start,
            fontWeight: FontWeight.bold,
          ),
          const SizedBox(height: 10),
          SizedBox(
            height: 250,
            child: ListView.builder(
              controller: ScrollController(),
              padding: const EdgeInsets.all(20),
              itemCount: questions.alternatives.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: CustomText(
                    text: questions.alternatives[index].title,
                  ),
                  leading: questions.answer == questions.alternatives[index].id
                      ? Icon(
                          Icons.check_box,
                          color: getColor(questions.alternatives[index].title),
                        )
                      : const Icon(
                          Icons.check_box_outline_blank_outlined,
                          color: primaryColor,
                        ),
                );
              },
            ),
          ),
          questions.feedback == ''
              ? Container()
              : Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text.rich(
                    TextSpan(
                      children: <TextSpan>[
                        TextSpan(
                          text: 'Feedback: ',
                          style: GoogleFonts.lexendDeca(
                            fontSize: 16,
                            color: primaryColor,
                          ),
                        ),
                        TextSpan(
                          text: questions.feedback,
                          style: GoogleFonts.lexendDeca(
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
          const SizedBox(height: 30),
        ],
      ),
    );
  }

  Color getColor(String answer) {
    if (answer == 'Adota parcialmente') {
      return Colors.green.shade200;
    } else if (answer == 'Iniciou plano para adotar') {
      return Colors.orange;
    } else if (answer == 'Não adota') {
      return Colors.red;
    } else {
      return Colors.green;
    }
  }
}
