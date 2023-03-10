import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomText extends StatelessWidget {
  final String text;
  final Color? corText;
  final double? fontSize;
  final FontWeight? fontWeight;
  final TextAlign? textAlign;
  final TextDecoration? textDecoration;
  final int? maxLines;
  final TextOverflow? textOverflow;

  const CustomText(
      {Key? key,
      required this.text,
      this.corText,
      this.fontSize,
      this.fontWeight,
      this.textAlign,
      this.textDecoration,
      this.maxLines,
      this.textOverflow})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: maxLines,
      textAlign: textAlign,
      overflow: textOverflow,
      style: GoogleFonts.lexendDeca(
        color: corText,
        fontSize: fontSize,
        fontWeight: fontWeight,
        decoration: textDecoration,
      ),
    );
  }
}
