import 'package:asistencia_escuela_deportes/pages/main_pages/home.dart';
import 'package:asistencia_escuela_deportes/pages/onboarding_login/login.dart';
import 'package:asistencia_escuela_deportes/pages/onboarding_login/onboarding.dart';
import 'package:asistencia_escuela_deportes/pages/onboarding_login/register.dart';
import 'package:flutter/material.dart';
import 'pages/onboarding_login/welcome.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
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
        '/onboarding': (context) => const OnboardingPage(),
        '/login': (context) => const LoginPage(),
        '/register': (context) => const RegisterPage(),
        '/home': (context) => const HomePage() // Define esta página
      },
    );
  }
}
