import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  final String buttonText;
  final VoidCallback onPressed;

  const PrimaryButton({
    Key? key,
    required this.buttonText,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: const AlignmentDirectional(0, 0),
      child: Container(
        decoration: BoxDecoration(
          boxShadow: const [
            BoxShadow(
              blurRadius: 22,
              color: Color.fromARGB(30, 149, 173,254), // Ajusta al color deseado
              offset: Offset(0, 10),
            ),
          ],
          gradient: const LinearGradient(
            colors: [
              Color(0xFF92A3FD), // Reemplaza con `brand1` de Flutter Flow
              Color(0xFF9DCEFF), // Reemplaza con `brand2` de Flutter Flow
            ],
            stops: [0, 1],
            begin: AlignmentDirectional(1, -0.14),
            end: AlignmentDirectional(-1, 0.14),
          ),
          borderRadius: BorderRadius.circular(99),
        ),
        child: InkWell(
          onTap: onPressed,
          child: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(0, 18, 0, 18),
            child: Text(
              buttonText,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontFamily: 'Poppins',
                color: Colors.white,
                letterSpacing: 0.0,
                fontWeight: FontWeight.bold,
                fontSize: 16,
                height: 1.5,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
