import 'package:flutter/material.dart';
import 'package:lgpb_compliance/components/custom_text.dart';

class CustomButton extends StatelessWidget {

  final String text;
  final VoidCallback? onPressed;
  final double? borderRadius;

  const CustomButton({
    Key? key,
    required this.text,
    required this.onPressed,
    this.borderRadius,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: borderRadius == null ? BorderRadius.circular(4) : BorderRadius.circular(borderRadius!),
      child: Stack(
        children: <Widget>[
          Positioned.fill(
            child: Container(
              decoration: const BoxDecoration(
                  color: Color(0xFF1374F2)
              ),
            ),
          ),
          TextButton(
            style: TextButton.styleFrom(
              padding: const EdgeInsets.all(16.0),
              primary: Colors.white,
            ),
            onPressed: onPressed,
            child: Center(child: CustomText(text: text)),
          ),
        ],
      ),
    );
  }
}
