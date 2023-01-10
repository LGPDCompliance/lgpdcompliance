import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:lgpb_compliance/components/custom_text.dart';
import 'package:lgpb_compliance/models/question_model.dart';
import 'package:lgpb_compliance/stores/compliance_store.dart';

typedef Callback = int Function(int);

class CustomQuestion extends StatefulWidget {
  final int numSection;
  final int numQuestion;
  final QuestionModel questions;

  const CustomQuestion({
    Key? key,
    required this.numQuestion,
    required this.questions,
    required this.numSection,
  }) : super(key: key);

  @override
  State<CustomQuestion> createState() => _CustomQuestionState();
}

class _CustomQuestionState extends State<CustomQuestion> {
  final ScrollController controller = ScrollController();
  int val = -1;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, left: 30, right: 30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomText(
            text: widget.numQuestion.toString() + '. ' + widget.questions.title,
            textAlign: TextAlign.start,
            fontWeight: FontWeight.bold,
          ),
          const SizedBox(height: 10),
          SizedBox(
            height: 250,
            child: ListView.builder(
              controller: controller,
              padding: const EdgeInsets.all(20),
              itemCount: widget.questions.alternatives.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: CustomText(
                    text: widget.questions.alternatives[index].title,
                  ),
                  leading: Radio(
                    value: index,
                    groupValue: val,
                    onChanged: (value) {
                      setState(
                        () {
                          val = value as int;
                          GetIt.I<ComplianceStore>().setLstAnswers(
                            section: widget.numSection,
                            index: widget.numQuestion - 1,
                            questionId: widget.questions.id,
                            alternativeId:
                                widget.questions.alternatives[index].id,
                            score: widget.questions.alternatives[index].score,
                          );
                        },
                      );
                    },
                  ),
                );
              },
            ),
          ),
          const SizedBox(height: 30),
        ],
      ),
    );
  }
}
