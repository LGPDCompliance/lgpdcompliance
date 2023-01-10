import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:lgpb_compliance/components/custom_text.dart';
import 'package:lgpb_compliance/helpers/constants.dart';
import 'package:lgpb_compliance/models/user_model.dart';
import 'package:lgpb_compliance/stores/admin_store.dart';
import 'package:lgpb_compliance/stores/page_store.dart';

class CustomCard extends StatelessWidget {

  final UserModel userModel;
  final AdminStore adminStore = GetIt.I<AdminStore>();
  final PageStore pageStore = GetIt.I<PageStore>();

  CustomCard({Key? key, required this.userModel}) : super(key: key);

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
              CustomText(
                  text: userModel.name!
              ),
              IconButton(
                icon: const Icon(
                  Icons.arrow_forward_ios,
                  color: primaryColor,
                ),
                onPressed: () {
                  pageStore.setPage(8);
                  adminStore.getHistoricByUserId(userId: userModel.id!);
                  adminStore.setName(userModel.name!);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
