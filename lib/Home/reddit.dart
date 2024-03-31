import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Reddit extends StatelessWidget {
  const Reddit({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SvgPicture.asset("assets/icons/star.svg", height: 100),
    );
  }
}
