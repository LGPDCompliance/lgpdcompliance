import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:lgpb_compliance/components/custom_text.dart';
import 'package:lgpb_compliance/helpers/constants.dart';
import 'package:lgpb_compliance/page/home/home_page.dart';
import 'package:lgpb_compliance/stores/page_store.dart';
import 'package:lgpb_compliance/stores/user_manager_store.dart';
import 'package:responsive_framework/responsive_framework.dart';

class HeadTop extends StatelessWidget {
  HeadTop({Key? key}) : super(key: key);

  final PageStore pageStore = GetIt.I<PageStore>();
  final UserManagerStore userManagerStore = GetIt.I<UserManagerStore>();

  @override
  Widget build(BuildContext context) {
    final isMobile = ResponsiveWrapper.of(context).isMobile ||
        MediaQuery.of(context).size.width == 450;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(
            top: 20,
            bottom: 10,
            right: isMobile ? 10 : 40,
            left: 20,
          ),
          child: SizedBox(
            height: 40,
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Observer(
                    builder: (_) {
                      return CustomText(
                        text: pageStore.namePage,
                        fontSize: 17,
                        corText: Colors.black,
                        fontWeight: FontWeight.bold,
                        textAlign: TextAlign.center,
                      );
                    },
                  ),
                ),
                TextButton(
                  onPressed: () {
                    pageStore.setPage(0);
                    userManagerStore.logout();
                    Navigator.of(context).pushAndRemoveUntil(
                        MaterialPageRoute(
                            builder: (context) => HomePage()),
                        (Route<dynamic> route) => false);
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: const [
                      Icon(
                        Icons.logout_outlined,
                        color: primaryColor,
                      ),
                      CustomText(
                        text: '  Sair',
                        textAlign: TextAlign.end,
                        corText: primaryColor,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
