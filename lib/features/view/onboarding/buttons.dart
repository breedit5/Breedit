import 'package:breedit/core/widgets/elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:breedit/core/util/url.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:breedit/core/widgets/text.dart';

TextSpan textButton(String text, String url, Color color) {
  return TextSpan(
    text: text,
    recognizer: TapGestureRecognizer()..onTap = () => launchURL(url),
    style: GoogleFonts.quicksand(
      color: color,
      fontWeight: FontWeight.w900,
      decoration: TextDecoration.underline,
    ),
  );
}

button(BuildContext context, Function() onPressed, Color backgroundColor,
    Color forgroundColor, String image, String text) {
  return CElevatedButton(
    onPressed: onPressed,
    backgroundColor: backgroundColor,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        if (text == "Google") SvgPicture.asset(image, height: 20),
        const SizedBox(width: 10),
        Quicksand(
          text: "Continue with $text",
          color: forgroundColor,
          weight: FontWeight.bold,
        ),
      ],
    ),
  );
}
