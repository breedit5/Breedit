import 'package:breedit/core/util/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Quicksand extends StatelessWidget {
  const Quicksand({
    super.key,
    required this.text,
    this.color,
    this.size,
    this.weight,
  });

  final String text;
  final Color? color;
  final double? size;
  final FontWeight? weight;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.quicksand(
        color: color ?? black,
        fontSize: size ?? 14,
        fontWeight: weight ?? FontWeight.normal,
      ),
    );
  }
}

class MerriWeather extends StatelessWidget {
  const MerriWeather({
    super.key,
    required this.text,
    this.color,
    this.size,
    this.weight,
  });

  final String text;
  final Color? color;
  final double? size;
  final FontWeight? weight;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.merriweather(
        color: color ?? black,
        fontSize: size ?? 14,
        fontWeight: weight ?? FontWeight.normal,
      ),
    );
  }
}
