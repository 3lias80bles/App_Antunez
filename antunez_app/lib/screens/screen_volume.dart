// Kevin Rafael Díaz López - 04/06/2025
// Archivo que contiene la pantalla de calcular volumen
import 'package:flutter/material.dart';
class ScreenVolume extends StatelessWidget {
  const ScreenVolume({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calcular Volumen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              'Aquí va el contenido para calcular volumen',
              style: TextStyle(fontSize: 24),
            ),
          ],
        ),
      ),
    );
  }
}