import 'package:flutter/material.dart';

class OnboardingButton extends StatelessWidget {
  final VoidCallback onPressed;

  const OnboardingButton({
    Key? key,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: GestureDetector(
        onTap: onPressed,
        child: Container(
          width: 50,
          height: 50,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xFF92A3FD), // Color 1 del gradiente
                Color(0xFF9DCEFF), // Color 2 del gradiente
              ],
              stops: [0, 1],
              begin: AlignmentDirectional(1, -0.14),
              end: AlignmentDirectional(-1, 0.14),
            ),
            shape: BoxShape.circle,
          ),
          child: const Icon(
            Icons.chevron_right,
            color: Colors.white,
            size: 24,
          ),
        ),
      ),
    );
  }
}
