import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:breedit/core/util/app_colors.dart';
import 'package:breedit/core/util/app_icon.dart';
import 'package:breedit/core/widgets/text.dart';
import 'package:breedit/core/widgets/elevated_button.dart';
import 'package:breedit/features/view_model/auth_provider.dart';
import 'package:breedit/features/view_model/editor.dart';

class PhoneNumber extends StatelessWidget {
  const PhoneNumber({super.key});

  @override
  Widget build(BuildContext context) {
    final AuthProvider prov = Provider.of(context, listen: false);

    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding:
              const EdgeInsets.only(left: 10, right: 10, bottom: 10, top: 80),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // IMAGE
                  image("assets/icons/phone.png"),
                  const SizedBox(height: 10),

                  // HEADING
                  const MerriWeather(
                    text: "What's your phone number?",
                    size: 20,
                    weight: FontWeight.w900,
                  ),
                  const SizedBox(height: 20),

                  // Text Editors
                  const Editor(),
                  const SizedBox(height: 5),

                  // SUB HEADING
                  const Quicksand(
                    text:
                        "Breedit will send you a text with a verification code."
                        " Message and data rates may apply.",
                  ),
                ],
              ),

              // NAVIGATION BUTTON
              CElevatedButton(
                backgroundColor: green,
                onPressed: () {
                  prov.validatePhoneNumber();
                  if (prov.phoneNumberRegex
                      .hasMatch(prov.phoneNumberController.text)) {
                    Navigator.pushNamed(context, '/otp');
                  }
                },
                child: Quicksand(
                  text: "Send OTP",
                  color: white,
                  weight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
