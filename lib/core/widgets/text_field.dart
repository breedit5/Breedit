import 'package:breedit/core/util/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CTextField extends StatelessWidget {
  const CTextField({
    super.key,
    this.onTap,
    required this.controller,
    this.readOnly,
    this.textAlign,
    this.autofocus,
    this.suffixIcon,
    this.onChanged,
    this.obscureText,
    this.hintText,
    this.errorText,
  });

  final TextEditingController controller;
  final VoidCallback? onTap;
  final Function(String)? onChanged;
  final bool? readOnly;
  final TextAlign? textAlign;
  final bool? autofocus;
  final Widget? suffixIcon;
  final String? hintText;
  final bool? obscureText;
  final String? errorText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onTap: onTap,
      controller: controller,
      onChanged: onChanged,
      readOnly: readOnly ?? false,
      textAlign: textAlign ?? TextAlign.start,
      autofocus: autofocus ?? false,
      obscureText: obscureText ?? false,
      cursorColor: black,
      keyboardType: TextInputType.phone,
      style: GoogleFonts.quicksand(
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
      decoration: InputDecoration(
        filled: true,
        fillColor: green.withOpacity(0.2),
        hintText: hintText,
        hintStyle: GoogleFonts.quicksand(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
        errorText: errorText,
        errorStyle: GoogleFonts.quicksand(
          fontWeight: FontWeight.bold,
        ),
        suffixIcon: suffixIcon,
        suffixIconColor: black,
        suffixIconConstraints: const BoxConstraints(maxWidth: 20),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(8),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: green, width: 2),
          borderRadius: BorderRadius.circular(8),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: red, width: 2),
          borderRadius: BorderRadius.circular(8),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }
}
