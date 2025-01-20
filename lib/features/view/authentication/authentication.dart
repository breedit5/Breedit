import 'package:breedit/features/view/onboarding/onboarding_screen.dart';
import 'package:flutter/material.dart';

class Authentication extends StatefulWidget {
  const Authentication({super.key});

  @override
  State<Authentication> createState() => _AuthenticationState();
}

class _AuthenticationState extends State<Authentication> {
  late Map<String, dynamic>? data;

  @override
  Widget build(BuildContext context) {
    // return StreamBuilder(
    //   stream: FirebaseAuth.instance.authStateChanges(),
    //   builder: (context, snapshot) {
    //     if (!snapshot.hasData) {
    return const OnboardingScreen();
    //   }
    //   String uid = snapshot.data!.uid;
    //   final ref = FirebaseFirestore.instance.collection('users').doc(uid);
    //   return FutureBuilder(
    //     future: ref.get(),
    //     builder: (context, snapshot) {
    //       if (!snapshot.hasData || !snapshot.data!.exists) {
    //         // return const Information();
    //       }
    //       return const Home();
    //     },
    //   );
    // },
    // );
  }
}
