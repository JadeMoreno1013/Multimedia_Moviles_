import 'package:flutter/material.dart';
import 'questions_screen.dart';

import '../widgets/ghost_button.dart';
import '../widgets/image_carousel.dart';
import '../widgets/paranormal_title.dart';
import '../widgets/ghost_background.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: GhostBackground(
          child: Column(
            children: [
              const SizedBox(height: 15),

              ShaderMask(
                shaderCallback: (bounds) {
                  return const LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,

                    colors: [
                      Color.fromARGB(255, 255, 255, 255),
                      Color.fromARGB(255, 100, 99, 99),
                      Color.fromARGB(255, 0, 0, 0),
                    ],
                  ).createShader(bounds);
                },

                child: Text(
                  'VIP',

                  style: TextStyle(
                    fontSize: 64,

                    fontWeight: FontWeight.w900,

                    letterSpacing: 16,

                    color: Colors.white,

                    shadows: [
                      // sombra principal
                      Shadow(
                        color: Colors.black.withOpacity(0.75),

                        offset: const Offset(0, 5),

                        blurRadius: 14,
                      ),

                      // glow rojo
                      Shadow(
                        color: Colors.red.withOpacity(0.45),

                        blurRadius: 25,
                      ),

                      // profundidad extra
                      Shadow(
                        color: Colors.black.withOpacity(0.35),

                        offset: const Offset(2, 2),

                        blurRadius: 4,
                      ),
                    ],
                  ),
                ),
              ),

              const ImageCarousel(),

              const ParanormalTitle(text: 'PARANORMAL'),

              const SizedBox(height: 15),

              GhostButton(
                text: 'Registrarse',
                icon: Icons.person_outline,

                onPressed: () {
                  Navigator.push(
                    context,

                    MaterialPageRoute(builder: (_) => const QuestionsScreen()),
                  );
                },
              ),

              const SizedBox(height: 12),

              GhostButton(
                text: 'Invitado',
                icon: Icons.star,

                onPressed: () {
                  Navigator.push(
                    context,

                    MaterialPageRoute(builder: (_) => const QuestionsScreen()),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
