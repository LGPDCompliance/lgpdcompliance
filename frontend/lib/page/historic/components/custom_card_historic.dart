import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:lgpb_compliance/components/custom_text.dart';
import 'package:lgpb_compliance/helpers/constants.dart';
import 'package:lgpb_compliance/models/historic_model.dart';
import 'package:intl/intl.dart';
import 'package:lgpb_compliance/stores/historic_store.dart';
import 'package:lgpb_compliance/stores/page_store.dart';

class CustomCardHistoric extends StatelessWidget {

  final HistoricModel historicModel;
  final DateFormat formatter = DateFormat("dd 'de' MMMM 'de' y");
  final PageStore pageStore = GetIt.I<PageStore>();
  final HistoricStore historicStore = GetIt.I<HistoricStore>();

  CustomCardHistoric({Key? key, required this.historicModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
      child: Material(
        elevation: 20,
        borderRadius: const BorderRadius.all(Radius.circular(20)),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Wrap(
            crossAxisAlignment: WrapCrossAlignment.center,
            alignment: WrapAlignment.spaceBetween,
            spacing: 50,
            runAlignment: WrapAlignment.center,
            runSpacing: 20,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Icon(
                    Icons.check_circle,
                    color: primaryColor,
                  ),
                  const SizedBox(width: 20),
                  CustomText(text: 'Quiz realizado em ' + formatter.format(historicModel.createdAt)),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  CustomText(text: 'Score: ' + historicModel.score.toString() + '%'),
                  const SizedBox(width: 20),
                  InkWell(
                    child: const CustomText(
                      text: 'Ver Detalhes',
                      corText: primaryColor,
                    ),
                    onTap: (){
                      historicStore.getAnswerByQuizAnswerId(quizId: historicModel.id);
                      pageStore.setPage(6);
                    },
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
