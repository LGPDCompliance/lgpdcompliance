import 'package:flutter/material.dart';
import 'package:lgpb_compliance/components/custom_text.dart';
import 'package:lgpb_compliance/helpers/constants.dart';
import 'package:responsive_framework/responsive_framework.dart';

class CenterComponent extends StatelessWidget {
  final String title;
  final String text;

  const CenterComponent({
    Key? key,
    required this.title,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isMobile = ResponsiveWrapper.of(context).isMobile ||
        MediaQuery.of(context).size.width == 450;
    return Stack(
      alignment: Alignment.center,
      children: [
        Column(
          children: [
            Container(
              height: isMobile ? 100 : 75,
              color: primaryColor,
            ),
            Container(
              height: isMobile ? 100 : 75,
              color: backgroundColor,
            ),
          ],
        ),
        ConstrainedBox(
          constraints: const BoxConstraints(
            maxWidth: 1400,
          ),
          child: Container(
            alignment: Alignment.center,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(17)),
              color: Color(0xFFE6E6E6),
            ),
            margin: const EdgeInsets.symmetric(horizontal: 50),
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                CustomText(
                  text: title,
                  fontSize: 20,
                  corText: primaryColor,
                  textAlign: TextAlign.center,
                ),
                CustomText(
                  text: text,
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
