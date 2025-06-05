// Kevin Rafael Díaz López - 04/06/2025
// Archivo que contiene la pantalla de calcular volumen
import 'package:flutter/material.dart';

class ScreenVolume extends StatelessWidget {
  const ScreenVolume({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Calcular Volumen',
          style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
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
              ),
            ),
            SizedBox(height: 70),
            ElevatedButton.icon(
              onPressed: () {},
              label: Icon(Icons.calculate_rounded, color: Color.fromARGB(255, 242, 232, 207), size: 30,),
              icon: Text('Calcular', style: TextStyle(color: Color.fromARGB(255, 242, 232, 207), fontSize: 20)),
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
