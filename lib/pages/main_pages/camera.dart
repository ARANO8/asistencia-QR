import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

class CameraScreen extends StatefulWidget {
  @override
  _CameraScreenState createState() => _CameraScreenState();
}

class _CameraScreenState extends State<CameraScreen> {
  bool _isProcessing = false; // Evita múltiples procesos

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Escáner QR'),
      ),
      body: MobileScanner(
        onDetect: (barcode, args) async {
          if (!_isProcessing) {
            setState(() {
              _isProcessing = true; // Evita más detecciones mientras procesas
            });

            if (barcode.rawValue != null) {
              final String code = barcode.rawValue!;
              debugPrint('Código detectado: $code');

              // Aquí puedes manejar el código detectado
              // Por ejemplo, mostrar un diálogo con el resultado
              await showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  title: const Text('Código detectado'),
                  content: Text(code),
                  actions: [
                    TextButton(
                      onPressed: () => Navigator.pop(context),
                      child: const Text('OK'),
                    ),
                  ],
                ),
              );

              // Salir de la pantalla tras mostrar el diálogo
              Navigator.of(context).pop(code);
            }

            setState(() {
              _isProcessing = false; // Permite nuevas detecciones
            });
          }
        },
      ),
    );
  }
}
