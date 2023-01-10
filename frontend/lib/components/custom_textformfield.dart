import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final bool isPasswordType;
  final IconData? icon;
  final String text;
  final TextInputType textInputType;
  final bool enabled;
  final Function(String) onChanged;
  final String? Function(String?)? validator;
  final Widget? suffixIcon;
  final int? maxLines;
  final TextEditingController? controller;

  const CustomTextFormField({
    Key? key,
    required this.isPasswordType,
    this.icon,
    required this.text,
    required this.textInputType,
    required this.enabled,
    required this.onChanged,
    required this.validator,
    this.suffixIcon,
    this.maxLines,
    this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      maxLines: maxLines ?? 1,
      validator: validator,
      enabled: enabled,
      onChanged: onChanged,
      obscureText: isPasswordType,
      enableSuggestions: !isPasswordType,
      autocorrect: !isPasswordType,
      cursorColor: Colors.grey.shade900,
      keyboardType: textInputType,
      style: const TextStyle(color: Colors.black),
      decoration: InputDecoration(
        suffixIcon: suffixIcon,
        hintText: text,
        icon: icon == null ? null : Icon(icon),
        filled: true,
        floatingLabelBehavior: FloatingLabelBehavior.never,
        fillColor: const Color(0xFFF3F3F3),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(width: 0, style: BorderStyle.none),
        ),
      ),
    );
  }
}
