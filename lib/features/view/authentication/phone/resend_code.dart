import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pinput/pinput.dart';
import 'package:provider/provider.dart';

import 'package:breedit/core/util/app_colors.dart';
import 'package:breedit/core/widgets/text.dart';
import 'package:breedit/features/view_model/auth_provider.dart';

class ResendCode extends StatefulWidget {
  const ResendCode({super.key});

  @override
  State<ResendCode> createState() => _ResendCodeState();
}

class _ResendCodeState extends State<ResendCode> {
  pinTheme(double opacity) {
    return PinTheme(
      height: 56,
      width: 56,
      textStyle: GoogleFonts.quicksand(
          color: black, fontWeight: FontWeight.bold, fontSize: 28),
      decoration: BoxDecoration(
        color: green.withOpacity(opacity),
        borderRadius: BorderRadius.circular(8),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Pinput(
          length: 6,
          showCursor: false,
          onChanged: (value) {
            setState(() {
              // code = value;
              // active = value.length == 6;
            });
          },
          defaultPinTheme: pinTheme(0.2),
          focusedPinTheme: pinTheme(0.5),
        ),
        const SizedBox(height: 5),
        Consumer<AuthProvider>(
          builder: (_, value, __) {
            return Align(
              alignment: Alignment.centerRight,
              child: Quicksand(
                text: value.resendCode ? "Resend code: ${value.count}" : "",
                color: green,
                weight: FontWeight.bold,
              ),
            );
          },
        )
      ],
    );
  }
}
