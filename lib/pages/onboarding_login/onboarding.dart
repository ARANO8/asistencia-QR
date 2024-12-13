import 'package:asistencia_escuela_deportes/components/onboarding_button.dart';
import 'package:asistencia_escuela_deportes/components/primary_button.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({Key? key}) : super(key: key);

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;

  final List<Map<String, String>> _onboardingData = [
    {
      'image': 'assets/images/controla.svg',
      'title': 'Controla tu asistencia',
      'description':
          'Marca tus asistencias a los entrenamientos, controla tu rendimiento, cumple objetivos y demuestra que eres el mejor.',
    },
    {
      'image': 'assets/images/mapa.svg',
      'title': 'Geolocalización Segura',
      'description':
          'Evita fraudes. Registra tu asistencia solo si estas presente en clase. La geolocalización asegura que nadie más registre por ti.',
    },
    {
      'image': 'assets/images/observations.svg',
      'title': 'Observaciones Personalizadas',
      'description':
          'Los instructores podran añadir observaciones osbre tu desempeño en cada entrenamiento. Recibe retroalimentación y mejora continuamente.',
    },
    {
      'image': 'assets/images/goals.svg',
      'title': 'Ranking y Logros',
      'description':
          'Suma puntos con cada asistencia y compite en el ranking. Consigue logros exclusivos y demuestra tu compromiso.',
    },
  ];

  void _onPageChanged(int index) {
    setState(() {
      _currentPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              controller: _pageController,
              onPageChanged: _onPageChanged,
              itemCount: _onboardingData.length,
              itemBuilder: (context, index) {
                final data = _onboardingData[index];
                return Column(
                  children: [
                    data['image']!.endsWith('.svg')
                        ? Padding(
                            padding: const EdgeInsets.only(
                                top:
                                    50.0), // Ajusta este valor según sea necesario
                            child: SvgPicture.asset(
                              data['image']!,
                              width: MediaQuery.of(context).size.width * 0.8,
                              fit: BoxFit.contain,
                            ),
                          )
                        : Padding(
                            padding: const EdgeInsets.only(top: 50.0),
                            child: Image.asset(
                              data['image']!,
                              width: MediaQuery.of(context).size.width * 0.8,
                              fit: BoxFit.cover,
                            ),
                          ),
                    Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            data['title']!,
                            style: const TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            data['description']!,
                            style: const TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 16,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment:
                  MainAxisAlignment.end, // Alineación al final (derecha)
              children: [
                if (_currentPage < _onboardingData.length - 1)
                  InkWell(
                    onTap: () {
                      // _pageController.nextPage(
                      //   duration: const Duration(milliseconds: 300),
                      //   curve: Curves.ease,
                      // );
                    },
                    child: CircularPercentIndicator(
                      radius: 30.0,
                      lineWidth: 4.0,
                      percent: (_currentPage + 1) / _onboardingData.length,
                      progressColor: const Color(0xFF92A3FD),
                      center: OnboardingButton(
                        onPressed: () {
                          _pageController.nextPage(
                            duration: const Duration(milliseconds: 300),
                            curve: Curves.ease,
                          );
                        },
                      ),
                    ),
                  )
                else
                  Expanded(
                    child: PrimaryButton(
                      buttonText: 'Comenzar',
                      onPressed: () {
                        Navigator.pushNamed(context, '/login');
                      },
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
