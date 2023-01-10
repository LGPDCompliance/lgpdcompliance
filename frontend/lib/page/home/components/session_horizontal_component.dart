import 'package:flutter/material.dart';
import 'package:lgpb_compliance/components/custom_text.dart';

class SessionHorizontalComponent extends StatelessWidget {
  final String title;
  final Color titleColor;
  final String text;
  final Color textsColor;
  final Color backgroundColor;
  final TextAlign textAlign;

  const SessionHorizontalComponent({
    Key? key,
    required this.title,
    required this.titleColor,
    required this.text,
    required this.textsColor,
    required this.backgroundColor,
    required this.textAlign,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.all(30),
      color: backgroundColor,
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 1300),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              flex: 2,
              child: CustomText(
                text: title,
                corText: titleColor,
                textAlign: TextAlign.end,
                fontSize: 23,
              ),
            ),
            const SizedBox(width: 50),
            Expanded(
              flex: 4,
              child: CustomText(
                text: text,
                corText: textsColor,
                textAlign: textAlign,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
