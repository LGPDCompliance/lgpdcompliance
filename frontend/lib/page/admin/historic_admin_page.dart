import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:lgpb_compliance/components/custom_text.dart';
import 'package:lgpb_compliance/helpers/constants.dart';
import 'package:lgpb_compliance/page/historic/components/custom_card_historic.dart';
import 'package:lgpb_compliance/stores/admin_store.dart';

class HistoricAdminPage extends StatelessWidget {
  final AdminStore adminStore = GetIt.I<AdminStore>();

  HistoricAdminPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) {
        return adminStore.loadingAdminPage
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              width: 5,
                              height: 30,
                              color: primaryColor,
                            ),
                            const SizedBox(width: 10),
                            CustomText(
                              text: adminStore.name,
                              fontSize: 20,
                            ),
                          ],
                        ),
                        DropdownButton<String>(
                          value: adminStore.dropdownValue,
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
                          onChanged: adminStore.onChangeDropDown,
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
                      ],
                    ),
                  ),
                  adminStore.listHistoric.isNotEmpty
                      ? Expanded(
                          child: ListView.builder(
                            controller: ScrollController(),
                            itemCount: adminStore.listHistoric.length,
                            itemBuilder: (BuildContext context, int index) {
                              return CustomCardHistoric(
                                historicModel: adminStore.listHistoric[index],
                              );
                            },
                          ),
                        )
                      : const Center(
                          child: CustomText(
                            text:
                                'O usuário não realizou nenhum Quiz.',
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
