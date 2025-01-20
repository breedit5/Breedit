import 'package:breedit/features/view/onboarding/buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:breedit/core/util/app_colors.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: const EdgeInsets.all(10),
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/pictures/home_background.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const Spacer(),
              SvgPicture.asset(
                'assets/pictures/green.svg',
                width: 230,
                colorFilter: ColorFilter.mode(white, BlendMode.srcIn),
              ),
              const Spacer(flex: 2),
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  style: GoogleFonts.quicksand(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                  children: [
                    const TextSpan(
                        text:
                            "By tapping Sign in or Create account, you agree to our "),
                    textButton(
                        "Terms of Service.", "https://hinge.co/terms", white),
                    const TextSpan(
                        text: " Learn how we process your data in our "),
                    textButton(
                        "Privacy Policy", "https://hinge.co/privacy", white),
                    const TextSpan(text: " and "),
                    textButton("Cookies Policy.",
                        "https://hinge.co/cookie-policy", white),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              button(
                context,
                () => Navigator.pushNamed(context, "/phoneNumber"),
                green,
                white,
                "",
                "Phone Number",
              ),
              const SizedBox(height: 5),
              button(
                context,
                () {},
                white,
                black,
                "assets/icons/google.svg",
                "Google",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
