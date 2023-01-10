import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:lgpb_compliance/page/historic/components/custom_answer_question.dart';
import 'package:lgpb_compliance/stores/historic_store.dart';

class DetailHistoricPage extends StatelessWidget {
  DetailHistoricPage({Key? key}) : super(key: key);

  final HistoricStore historicStore = GetIt.I<HistoricStore>();

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) {
        return historicStore.loadingHistoricPage
            ? const Center(child: CircularProgressIndicator())
            : SingleChildScrollView(
                controller: ScrollController(),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    for (int i = 0;
                        i < historicStore.answerModel!.questions.length;
                        i++)
                      CustomAnswerQuestion(
                        numQuestion: i + 1,
                        questions: historicStore.answerModel!.questions[i],
                      ),
                  ],
                ),
              );
      },
    );
  }
}
