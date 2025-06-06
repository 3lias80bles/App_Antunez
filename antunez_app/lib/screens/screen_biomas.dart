// Kevin Rafael Díaz López - 04/06/2025
// Archivo que contiene la pantalla de calcular volumen
import 'package:flutter/material.dart';
import 'dart:math';

class ScreenBiomas extends StatefulWidget {
  const ScreenBiomas({super.key});

  @override
  State<ScreenBiomas> createState() => _ScreenBiomasState();
}

class _ScreenBiomasState extends State<ScreenBiomas> {
  final TextEditingController _diametroController = TextEditingController();

  void _calculateVolume() {
    // Aquí puedes implementar la lógica para calcular el volumen
    // utilizando el valor de _alturaController.text.
    // Por ejemplo, podrías convertirlo a un número y realizar cálculos.
    double diametro = double.tryParse(_diametroController.text) ?? 0.0;
    // Realiza el cálculo del volumen aquí...

    if (diametro <= 0) {
      // Mostrar un mensaje de error si la altura no es válida
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          backgroundColor: Color.fromARGB(255, 188, 71, 73),
          content: Text(
            'Por favor, ingrese un diametro valido. \nEl diámetro debe ser mayor a 0.',
            textAlign: TextAlign.center,
          ),
        ),
      );
    } else {
      double biomasaHojas = 28.14663 * pow(diametro, 1.49905);
      double biomasaRamas = 5.2717 * pow(diametro, 2.3562);
      double biomasaTallo = 31.0186 * pow(diametro, 2.6393);
      double biomasaRaices = 18.61804 * pow(diametro, 1.92087);
      double biomasaTotal =
          biomasaHojas + biomasaRamas + biomasaTallo + biomasaRaices;
      double volumenTallo = 23.86259 * pow(diametro, 1.67853);
      double volumenRaices = 35.3235 * pow(diametro, 2.5239);

      // Mostrar el resultado en un SnackBar
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            backgroundColor: Color.fromARGB(255, 106, 153, 78),
            title: Text(
              'Resultado del cálculo',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image(
                  image: AssetImage('assets/results.png'),
                  width: 20,
                  height: 20,
                ),

                Text(
                  'Biomasa de hojas: ${biomasaHojas.toStringAsFixed(4)} g\n'
                  'Biomasa de ramas: ${biomasaRamas.toStringAsFixed(4)} g\n'
                  'Biomasa de tallo: ${biomasaTallo.toStringAsFixed(4)} g\n'
                  'Biomasa de raíces: ${biomasaRaices.toStringAsFixed(4)} g\n'
                  'Biomasa total: ${biomasaTotal.toStringAsFixed(4)} g\n'
                  'Volumen de tallo: ${volumenTallo.toStringAsFixed(4)} cm³\n'
                  'Volumen de raíces: ${volumenRaices.toStringAsFixed(4)} cm³',
                ),

                SizedBox(height: 10),
                Text(
                  'Los parámetros se optimizaron mediante la regresión cuantílica (véase Antúnez et al., 2023).',
                  style: TextStyle(fontSize: 14),
                  textAlign: TextAlign.justify,
                ),
              ],
            ),
            actions: [
              TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 242, 232, 207),
                  foregroundColor: Colors.black,
                ),
                onPressed: () {
                  Navigator.pop(context); // Cierra el AlertDialog
                },
                child: Text('Cerrar', style: TextStyle(fontSize: 18)),
              ),
            ],
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
                image: AssetImage('assets/image_bioma.png'),
                width: 250,
                height: 250,
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
                  labelText: 'Diámetro (cm): ',
                  labelStyle: TextStyle(fontSize: 20),
                ),
                keyboardType: TextInputType.number,
                controller: _diametroController,
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
