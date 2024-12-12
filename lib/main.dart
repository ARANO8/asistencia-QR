import 'package:flutter/material.dart';
import 'pages/onboarding_login/welcome.dart';
// import 'pages/onboarding_login/onboarding.dart'; // Crea esta página después.

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const WelcomePage(),
        // '/onboarding': (context) => const OnboardingPage(), // Define esta página más adelante.
      },
    );
  }
}
