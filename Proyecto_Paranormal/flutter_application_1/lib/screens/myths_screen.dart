import 'package:flutter/material.dart';
import '../widgets/custom_navbar.dart';
import '../widgets/myth_card.dart';
import 'package:google_fonts/google_fonts.dart';

class MythsScreen extends StatelessWidget {
  const MythsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      extendBody: true,
      bottomNavigationBar: const CustomNavbar(currentIndex: 3),

      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 185, 184, 184), // más claro
              Color.fromARGB(255, 85, 85, 87), 
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),

        child: SafeArea(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(
              horizontal: 18,
              vertical: 24,
            ),

            child: Column(
              children: [
                // ===== GRID SUPERIOR FLEXIBLE =====
                Wrap(
                  spacing: 14,
                  runSpacing: 14,
                  alignment: WrapAlignment.center,

                  children: const [
                    MythCard(
                      image:
                          'https://ik.imagekit.io/VIPparanormal/141223033400_ohiohomeofthemilannwi.jpg',
                      title: 'Casas abandonadas',
                      description:
                          'Un "punto frío" suele deberse a corrientes de aire.',
                    ),
                    MythCard(
                      image:
                          'https://ik.imagekit.io/VIPparanormal/images_q=tbn:ANd9GcTLT94teuvMOs91H2hGlvrAOMk7c03A8RBuQw&s',
                      title: 'Las Ouija "abren portales"',
                      description: 'Es una puerta directa al infierno.',
                    ),
                    MythCard(
                      image:
                          'https://ik.imagekit.io/VIPparanormal/O6EB237ZVZA3PLOHUFBOS7KB5A.jpeg_auth=d9fa010d4d1df2f9e487ff4df40da8b63ca635625df20a2106d592ca2d7d2192&width=360&height=203&smart=true',
                      title: 'Las posesiones son reales',
                      description: 'Ocurren por entidades malignas.',
                    ),
                  ],
                ),

                const SizedBox(height: 35),

                // ===== TITULO =====
                Column(
                  children: [
                    Text(
                      'MITOS &',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.creepster(
                        fontSize: 42,
                        fontWeight: FontWeight.bold,
                        color: const Color.fromARGB(255, 224, 223, 223),
                        letterSpacing: 2,
                      ),
                    ),

                    Transform.rotate(
                      angle: -0.04,
                      child: Text(
                        'VERDADES',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.creepster(
                          fontSize: 42,
                          fontWeight: FontWeight.bold,
                          color: Colors.red.shade700,
                          letterSpacing: 2,
                        ),
                      ),
                    ),

                    Container(
                      margin: const EdgeInsets.only(top: 6),
                      width: 160,
                      height: 2,
                      color: Colors.red.shade700.withOpacity(0.8),
                    ),
                  ],
                ),

                const SizedBox(height: 35),

                // ===== GRID INFERIOR =====
                Wrap(
                  spacing: 14,
                  runSpacing: 14,
                  alignment: WrapAlignment.center,

                  children: const [
                    MythCard(
                      image:
                          'https://ik.imagekit.io/VIPparanormal/curva1.jpg',
                      title: 'Lo que aparece de noche',
                      description: 'No siempre tiene origen paranormal.',
                    ),
                    MythCard(
                      image:
                          'https://ik.imagekit.io/VIPparanormal/images_q=tbn:ANd9GcRzu9kIrPAPoLNM_2CAA4nmtklA_jhlymeznQ&s',
                      title: 'Casas frías',
                      description:
                          'Las corrientes de aire explican muchos casos.',
                    ),
                    MythCard(
                      image:
                          'https://ik.imagekit.io/VIPparanormal/Espejos-fantasmas.jpg',
                      title: 'Los espejos son portales',
                      description: 'Es una creencia muy popular.',
                    ),
                  ],
                ),

                const SizedBox(height: 40),
              ],
            ),
          ),
        ),
      ),
    );
  }
}