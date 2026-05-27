import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/ghost_button.dart';
import '../widgets/custom_navbar.dart';
import '../widgets/ghost_input.dart';

// IMPORTA TU SCREEN SI EXISTE
import 'questions_screen.dart';

class CommentsScreen extends StatelessWidget {
  const CommentsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      extendBody: true,
      bottomNavigationBar: const CustomNavbar(currentIndex: 5),

      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFF0E0F14),
              Color(0xFF161823),
              Color(0xFF0B0C10),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),

        child: SafeArea(
          child: SingleChildScrollView(
            padding: const EdgeInsets.fromLTRB(28, 20, 28, 40),

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,

              children: [
                const SizedBox(height: 20),

                // ===== TITULO =====
                Text(
                  'REGISTRO\nDE TESTIMONIO',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.creepster(
                    fontSize: 42,
                    color: const Color(0xFFB71C1C),
                    height: 0.95,
                    letterSpacing: 1.5,
                  ),
                ),

                const SizedBox(height: 10),

                const Text(
                  'Expediente de reporte paranormal',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.white54,
                    letterSpacing: 1.2,
                  ),
                ),

                const SizedBox(height: 45),

                const GhostInput(label: 'Usuario'),
                const SizedBox(height: 22),

                const GhostInput(label: 'Correo electrónico'),
                const SizedBox(height: 22),

                const GhostInput(label: 'Contraseña', obscure: true),

                const SizedBox(height: 55),

                // ===== BOTÓN ÚNICO (SISTEMA) =====
                GhostButton(
                  text: 'ENVIAR EXPEDIENTE',
                  icon: Icons.send,

                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const QuestionsScreen(),
                      ),
                    );
                  },
                ),

                const SizedBox(height: 20),

                Text(
                  'Regresar',
                  style: TextStyle(
                    fontSize: 13,
                    color: Colors.white38,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}