import 'package:flutter/material.dart';

import '../widgets/custom_navbar.dart';
import '../widgets/paranormal_title.dart';
import '../widgets/conspiracy_card.dart';
import '../widgets/conspiracy_section.dart';

class NewsScreen extends StatelessWidget {
  const NewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      extendBody: true,
      bottomNavigationBar: const CustomNavbar(currentIndex: 2),

      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 29, 31, 41),
              Color(0xFF0E0F14), // azul gris suave
              Color(0xFF0B0C10), // cierre
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),

        child: SafeArea(
          child: SingleChildScrollView(
            padding: const EdgeInsets.fromLTRB(20, 24, 20, 40),

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 8),

                // ===== TÍTULO CENTRADO =====
                Center(
                  child: const ParanormalTitle(
                    text: 'TEORÍAS\nDE CONSPIRACIÓN',
                    size: 28,
                  ),
                ),

                const SizedBox(height: 10),

                // ===== SUBTÍTULO =====
                const Center(
                  child: Text(
                    'Expedientes, teorías y misterios sin resolver.',
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

                // ===== SECCIONES CON MÁS AIRE =====
                ConspiracySection(
                  title: 'ÁREA 51',
                  cards: const [
                    ConspiracyCard(
                      image:
                          'https://ik.imagekit.io/VIPparanormal/324523ff.jpg',
                      title: 'Hangar Secreto',
                      description:
                          'Investigaciones ocultas y tecnología clasificada.',
                    ),
                    ConspiracyCard(
                      image:
                          'https://ik.imagekit.io/VIPparanormal/images_q=tbn:ANd9GcTsjDqfExZjiejz6aWrkfgdJ7kuofDUldI7KA&s',
                      title: 'Tecnología Alienígena',
                      description: 'Supuestos restos de naves extraterrestres.',
                    ),
                  ],
                ),

                const SizedBox(height: 22),

                ConspiracySection(
                  title: 'OVNIS',
                  cards: const [
                    ConspiracyCard(
                      image:
                          'https://ik.imagekit.io/VIPparanormal/https_3A_2F_2Fsdmedia.playser.cadenaser.com_2Fplayser_2Fimage_2F20244_2F02_2F1712080496870_1712080523_asset_still.png_auth=eabd8b1fa362b1f318f9e01fcbc0855e1e37b1f22d96588c3f71bcd1b3471c51&quality=70&width=736&height=414&smart=true',
                      title: 'Luces Extrañas',
                      description:
                          'Objetos no identificados vistos en cielos nocturnos.',
                    ),
                    ConspiracyCard(
                      image:
                          'https://ik.imagekit.io/VIPparanormal/science-fiction-concept-of-a-man-with-a-torch-royalty-free-image-1672823315.jpg_resize=980:*',
                      title: 'Encuentros Cercanos',
                      description:
                          'Testimonios de personas alrededor del mundo.',
                    ),
                  ],
                ),

                const SizedBox(height: 22),

                ConspiracySection(
                  title: 'SOCIEDADES SECRETAS',
                  cards: const [
                    ConspiracyCard(
                      image:
                          'https://ik.imagekit.io/VIPparanormal/150820044619_illuminati_624x351_thinkstock.jpg',
                      title: 'Illuminati',
                      description: 'Organización vinculada al control global.',
                    ),
                    ConspiracyCard(
                      image:
                          'https://ik.imagekit.io/VIPparanormal/ocultista-goteando-cera-caliente-rituales-magicos-munecas-vudu-horror-hechizo-negro_337384-4732.jpg',
                      title: 'Rituales Ocultos',
                      description:
                          'Ceremonias y símbolos relacionados al esoterismo.',
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