import 'package:flutter/material.dart';
import 'package:lgpb_compliance/components/custom_text.dart';
import 'package:lgpb_compliance/helpers/constants.dart';

class LeftComponent extends StatelessWidget {
  const LeftComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Container(
        height: MediaQuery.of(context).size.height,
        color: backgroundColor,
        padding: const EdgeInsets.all(40),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            const Align(
              alignment: Alignment.topLeft,
              child: BackButton(
                color: primaryColor,
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    'images/undraw_login.png',
                    fit: BoxFit.cover,
                    scale: 1,
                  ),
                  const CustomText(
                    text:
                    'Educando desenvolvedores para uma internet mais transparente e segura!',
                    fontSize: 16,
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
