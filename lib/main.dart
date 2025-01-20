import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:firebase_core/firebase_core.dart';

import 'theme/light.dart';
import 'routes/route.dart';
import 'package:breedit/services/firebase_options.dart';
import 'package:breedit/core/util/app_colors.dart';
import 'package:breedit/features/view_model/auth_provider.dart';

import 'package:breedit/features/view/onboarding/onboarding_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: black,
        systemNavigationBarColor: green,
      ),
    );

    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => AuthProvider(),
        ),
      ],
      child: MaterialApp(
        title: 'Breedit',
        theme: light,
        routes: routes,
        home: const OnboardingScreen(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
