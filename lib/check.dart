import 'package:breedit/core/widgets/text.dart';
import 'package:flutter/material.dart';

class Check extends StatelessWidget {
  const Check({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: MerriWeather(text: "Checking Successful", size: 36),
      ),
    );
  }
}
