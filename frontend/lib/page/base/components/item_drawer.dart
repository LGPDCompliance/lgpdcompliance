import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:lgpb_compliance/components/custom_text.dart';
import 'package:lgpb_compliance/helpers/constants.dart';
import 'package:lgpb_compliance/stores/admin_store.dart';
import 'package:lgpb_compliance/stores/historic_store.dart';
import 'package:lgpb_compliance/stores/page_store.dart';
import 'package:responsive_framework/responsive_framework.dart';

class ItemDrawer extends StatelessWidget {
  final PageStore pageStore = GetIt.I<PageStore>();
  final AdminStore adminStore = GetIt.I<AdminStore>();
  final HistoricStore historicStore = GetIt.I<HistoricStore>();

  final String title;
  final int page;
  final bool selected;
  final IconData icon;

  ItemDrawer({
    Key? key,
    required this.title,
    required this.page,
    required this.selected,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isMobile = ResponsiveWrapper.of(context).isMobile ||
        MediaQuery.of(context).size.width == 450;
    return ListTile(
      contentPadding: EdgeInsets.zero,
      title: Row(
        children: [
          Container(
            width: 7,
            height: 40,
            color: selected ? primaryColor : Colors.transparent,
          ),
          const SizedBox(
            width: 50,
          ),
          Icon(
            icon,
            color: selected ? primaryColor : Colors.black,
          ),
          const SizedBox(
            width: 20,
          ),
          CustomText(
            text: title,
            fontSize: 15,
            corText: selected ? primaryColor : Colors.black,
          ),
        ],
      ),
      onTap: () {
        pageStore.setPage(page);
        if(page == 7) {
          adminStore.getUsers();
        } else if (page == 5 || page == 8) {
          historicStore.getHistoricByUserId();
        } else if (page == 6) {
          // historicStore.getDetailHistoric();
        }

        if (isMobile) {
          Navigator.pop(context);
        }
      },
    );
  }
}
