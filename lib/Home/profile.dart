import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SvgPicture.asset("assets/icons/profile.svg", height: 100),
    );
  }
}
