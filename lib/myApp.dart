import 'package:animated_container/features/authentication/screens/onboarding/onboarding.dart';
import 'package:animated_container/utilities/constant/theme/theme.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: UAppTheme.lightTheme,
      darkTheme: UAppTheme.darkTheme,

      home: OnboardingScreen(),
    );
  }
}