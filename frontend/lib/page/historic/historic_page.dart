import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:lgpb_compliance/components/custom_text.dart';
import 'package:lgpb_compliance/helpers/constants.dart';
import 'package:lgpb_compliance/page/historic/components/custom_card_historic.dart';
import 'package:lgpb_compliance/stores/historic_store.dart';

class HistoricPage extends StatelessWidget {
  final HistoricStore historicStore = GetIt.I<HistoricStore>();

  HistoricPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) {
        return historicStore.loadingHistoricPage
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40),
                    child: DropdownButton<String>(
                      value: historicStore.dropdownValue,
                      icon: const Icon(
                        Icons.keyboard_arrow_down_outlined,
                        color: primaryColor,
                      ),
                      elevation: 0,
                      style: const TextStyle(color: primaryColor),
                      underline: Container(
                        height: 1,
                        color: primaryColor,
                      ),
                      onChanged: historicStore.onChangeDropDown,
                      items: <String>[
                        'Selecione um filtro',
                        'Score crescente',
                        'Score decrescente',
                        'Data crescente',
                        'Data decrescente'
                      ].map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: CustomText(
                            text: value,
                            corText: Colors.black,
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                  historicStore.listHistoric!.isNotEmpty
                      ? Expanded(
                          child: ListView.builder(
                            controller: ScrollController(),
                            itemCount: historicStore.listHistoric!.length,
                            itemBuilder: (BuildContext context, int index) {
                              return CustomCardHistoric(
                                historicModel:
                                    historicStore.listHistoric![index],
                              );
                            },
                          ),
                        )
                      : const Center(
                          child: CustomText(
                            text:
                                'Histórico vazio. Finalize um Quiz para vê-lo aqui.',
                            fontSize: 17,
                            corText: Colors.grey,
                          ),
                        )
                ],
              );
      },
    );
  }
}
