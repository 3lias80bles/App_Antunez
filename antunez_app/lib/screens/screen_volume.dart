// Kevin Rafael Díaz López - 04/06/2025
// Archivo que contiene la pantalla de calcular volumen
import 'package:flutter/material.dart';
import 'dart:math';

class ScreenVolume extends StatefulWidget {
  const ScreenVolume({super.key});

  @override
  State<ScreenVolume> createState() => _ScreenVolumeState();
}

class _ScreenVolumeState extends State<ScreenVolume> {
  final TextEditingController _alturaController = TextEditingController();
  final TextEditingController _diametroController = TextEditingController();

  void _calculateVolume() {
    // Aquí puedes implementar la lógica para calcular el volumen
    // utilizando el valor de _alturaController.text.
    // Por ejemplo, podrías convertirlo a un número y realizar cálculos.
    double altura = double.tryParse(_alturaController.text) ?? 0.0;
    double diametro = double.tryParse(_diametroController.text) ?? 0.0;
    // Realiza el cálculo del volumen aquí...

    if (diametro <= 7.5) {
      // Mostrar un mensaje de error si la altura no es válida
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          backgroundColor: Color.fromARGB(255, 188, 71, 73),
          content: Text(
            'Por favor, ingresa una altura válida. \nEl diámetro debe ser mayor o igual a 7.5 cm.', textAlign: TextAlign.center,
          ),
        ),
      );
    } else {
      // Lógica para calcular el volumen
      double a, b, c;
      if (diametro < 32.5) {
        a = 0.000026;
        b = 2.129789;
        c = 0.984286;
      } else if (diametro >= 32.5 && diametro < 39) {
        a = 0.000054;
        b = 1.990294;
        c = 0.897275;
      } else {
        a = 0.000110;
        b = 1.871412;
        c = 0.828973;
      }

      double volumen =
          a * pow(diametro, b).toDouble() * pow(altura, c).toDouble();

      // Mostrar el resultado en un SnackBar
      showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return Container(
            height: 250,
            color: Color.fromARGB(255, 56, 102, 65),
            padding: EdgeInsets.all(20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'El volumen fustal es: ${volumen.toStringAsFixed(2)} m³',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 10),
                Text(
                  'Los parámetros se optimizaron mediante la regresión cuantílica (véase Antúnez et al., 2023).',
                  style: TextStyle(fontSize: 14),
                  textAlign: TextAlign.justify,
                ),
                SizedBox(height: 40),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context); // Cierra el BottomSheet
                  },
                  style: ButtonStyle(),
                  child: Text(
                    'Cerrar',
                    style: TextStyle(color: Colors.black, fontSize: 18, ),
                  ),
                ),
              ],
            ),
          );
        },
      );
    }

    return;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Calcular Volumen',
          style: TextStyle(
            color: Colors.white,
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
        leading: IconButton(
          icon: Icon(Icons.home_filled, size: 25),
          color: Colors.white,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: Color.fromARGB(255, 56, 102, 65),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.all(20),
              child: Image(
                image: AssetImage('assets/image_volume.png'),
                width: 220,
                height: 220,
              ),
            ),
            SizedBox(height: 20),
            SizedBox(
              width: 300,
              height: 50,
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  hintText: 'Diámetro Normal (cm)',
                ),
                keyboardType: TextInputType.number,
                controller: _diametroController,
                style: TextStyle(color: Colors.black),
              ),
            ),
            SizedBox(height: 20),
            SizedBox(
              width: 300,
              height: 50,
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  hintText: 'Altura Total (m)',
                ),
                keyboardType: TextInputType.number,
                controller: _alturaController,
                style: TextStyle(color: Colors.black),
              ),
            ),
            SizedBox(height: 70),
            ElevatedButton.icon(
              onPressed: _calculateVolume,
              label: Icon(
                Icons.calculate_rounded,
                color: Color.fromARGB(255, 242, 232, 207),
                size: 30,
              ),
              icon: Text(
                'Calcular',
                style: TextStyle(
                  color: Color.fromARGB(255, 242, 232, 207),
                  fontSize: 20,
                ),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 56, 102, 65),
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
