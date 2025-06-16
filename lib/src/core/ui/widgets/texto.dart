import 'package:flutter/material.dart';

class Texto extends StatelessWidget {
  final String labelText;
  final String hintText;
  final TextEditingController controller;
  final IconData prefixIcon;
  final IconData? suffixIcon;
  final bool obscureText;
  final Widget? suffixIconWidget;
  final TextInputType? keyboardType;
  final String? Function(String?)? validator;
  final bool readOnly;
  final VoidCallback? onTap;
  final Color textColor;
  final Color borderColor;

  const Texto({
    super.key,
    required this.labelText,
    required this.hintText,
    required this.controller,
    required this.prefixIcon,
    this.suffixIcon,
    this.obscureText = false,
    this.suffixIconWidget,
    this.keyboardType,
    this.validator,
    this.readOnly = false,
    this.onTap,
    this.textColor = Colors.black,
    this.borderColor = Colors.black12,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: obscureText,
      keyboardType: keyboardType,
      readOnly: readOnly,
      onTap: onTap,
      style: TextStyle(color: textColor),
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        floatingLabelBehavior: FloatingLabelBehavior.never,
        labelText: hintText,
        hintText: hintText,
        hintStyle: const TextStyle(
          color: Colors.black45,
          fontSize: 16,
        ),
        labelStyle: const TextStyle(
          color: Colors.black45,
          fontSize: 16,
        ),
        prefixIcon: Icon(prefixIcon, color: Colors.black54),
        suffixIcon: suffixIconWidget ?? (suffixIcon != null ? Icon(suffixIcon, color: Colors.blue) : null),
        contentPadding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide.none,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide.none,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide.none,
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: const BorderSide(color: Colors.red),
        ),
      ),
      validator: validator,
    );
  }
}