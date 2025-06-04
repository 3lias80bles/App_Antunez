import 'package:flutter/material.dart';
import 'package:antunez_app/screens/screen_volume.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aplicacion forestal',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const ScreenVolume()
    );
  }
}

<<<<<<< HEAD
=======
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('Hola:'),

            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: () {
               
              },
              child: const Text('Iniciar Boton de Prueba'),
            ),
          ],
        ),
      ),
    );
  }
}
>>>>>>> ab9887204adf14d75393a3836e2a37a122deea68
