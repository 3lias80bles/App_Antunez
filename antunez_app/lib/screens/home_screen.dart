import 'package:flutter/material.dart';
import 'package:antunez_app/widgets/background_layer.dart';
import 'package:antunez_app/widgets/primary_button.dart';
import 'package:antunez_app/screens/screen_biomas.dart';
import 'package:antunez_app/screens/screen_volume.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  static const String routeName = '/'; // Ruta raíz

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          const BackgroundLayer(),

          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    alignment: Alignment.center,
                    padding: const EdgeInsets.symmetric(vertical: 130, horizontal: 16),
                    child: Column(
                      children: [
                        Text(
                          'Antúnez App',
                          style: theme.textTheme.headlineLarge?.copyWith(
                            fontSize: 36,
                            fontWeight: FontWeight.w700,
                            color: Colors.black,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 6),
                        Text(
                          'Universidad de la Sierra Juárez',
                          style: theme.textTheme.bodyMedium?.copyWith(
                            fontSize: 20,
                            fontStyle: FontStyle.italic,
                            color: Colors.black,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),

                  const Spacer(flex: 6),

                  PrimaryButton(
                    label: 'Biomas',
                    icon: Icons.landscape,
                    onPressed: () {
                      Navigator.pushNamed(context, ScreenBiomas.routeName);
                    },
                  ),

                  const SizedBox(height: 20),

                  PrimaryButton(
                    label: 'Calcular Volumen',
                    icon: Icons.forest,
                    onPressed: () {
                      Navigator.pushNamed(context, ScreenVolume.routeName);
                    },
                  ),

                  const Spacer(flex: 3),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
