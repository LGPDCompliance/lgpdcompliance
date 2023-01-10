import 'package:flutter/material.dart';
import 'package:lgpb_compliance/components/custom_text.dart';

class SessionVerticalComponent extends StatelessWidget {
  final String title;
  final Color titleColor;
  final List<String> texts;
  final Color textsColor;
  final Color backgroundColor;
  final double heightContainerMobile;
  final double heightContainerWEB;
  final TextAlign textAlign;

  const SessionVerticalComponent({
    Key? key,
    required this.title,
    required this.texts,
    required this.backgroundColor,
    required this.titleColor,
    required this.textsColor,
    required this.heightContainerMobile,
    required this.heightContainerWEB,
    required this.textAlign,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.all(30),
      color: backgroundColor,
      child: Column(
        children: [
          ConstrainedBox(
            constraints: const BoxConstraints(
              maxWidth: 1300,
            ),
            child: Align(
              alignment: Alignment.centerLeft,
              child: CustomText(
                text: title,
                corText: titleColor,
                fontSize: 32,
                textAlign: TextAlign.start,
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          for (var text in texts) ...[
            ConstrainedBox(
              constraints: const BoxConstraints(
                maxWidth: 1300,
              ),
              child: Align(
                alignment: Alignment.centerLeft,
                child: CustomText(
                  text: text,
                  corText: textsColor,
                  fontSize: 15,
                  fontWeight: FontWeight.w100,
                  textAlign: textAlign,
                ),
              ),
            ),
          ]
        ],
      ),
    );
  }
}
