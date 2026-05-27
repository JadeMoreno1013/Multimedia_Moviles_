import 'package:flutter/material.dart';

import '../widgets/custom_navbar.dart';
import '../widgets/multimedia_card.dart';
import '../widgets/paranormal_title.dart';
import '../widgets/ghost_background.dart';

class MultimediaScreen extends StatelessWidget {
  const MultimediaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      extendBody: true,
      bottomNavigationBar: const CustomNavbar(currentIndex: 4),

      body: GhostBackground(
        child: SafeArea(
          child: SingleChildScrollView(
            padding: const EdgeInsets.fromLTRB(20, 24, 20, 40),

            child: Column(
              children: [
                const SizedBox(height: 10),

                // ===== TITULO =====
                Center(
                  child: const ParanormalTitle(
                    text: 'MULTIMEDIA',
                    size: 30,
                  ),
                ),

                const SizedBox(height: 8),

                const Center(
                  child: Text(
                    'Archivos audiovisuales clasificados',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white54,
                      fontSize: 12,
                      letterSpacing: 1.2,
                      height: 1.4,
                    ),
                  ),
                ),

                const SizedBox(height: 32),

                // ===== CARDS =====
                MultimediaCard(
                  image:
                      'https://images.unsplash.com/photo-1509248961158-e54f6934749c',
                  title: 'Experiencias y relatos paranormales',
                  description:
                      'Historias reales de personas que aseguran haber vivido encuentros inexplicables.',
                  videoLeft: true,
                ),

                const SizedBox(height: 18),

                MultimediaCard(
                  image:
                      'https://ik.imagekit.io/VIPparanormal/images_q=tbn:ANd9GcQPnvuHhIp4xX0uBT61TiUezQvGGVS-TvRUdA&s',
                  title: 'Relatos en vivo',
                  description:
                      'Eventos registrados en cámaras y situaciones extrañas captadas en tiempo real.',
                  videoLeft: false,
                ),

                const SizedBox(height: 18),

                MultimediaCard(
                  image:
                      'https://ik.imagekit.io/VIPparanormal/Espejos-fantasmas.jpg',
                  title: 'Sucesos paranormales',
                  description:
                      'Compilaciones de sonidos, apariciones y fenómenos misteriosos.',
                  videoLeft: true,
                ),

                const SizedBox(height: 18),

                MultimediaCard(
                  image:
                      'https://ik.imagekit.io/VIPparanormal/1.jpg_ip=x480',
                  title: 'Archivos ocultos',
                  description:
                      'Documentos secretos y grabaciones vinculadas a conspiraciones modernas.',
                  videoLeft: false,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}