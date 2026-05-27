import 'package:flutter/material.dart';

import '../widgets/custom_navbar.dart';
import '../widgets/expert_card.dart';
import '../widgets/paranormal_title.dart';

import 'package:google_fonts/google_fonts.dart';

class QuestionsScreen extends StatelessWidget {
  const QuestionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      extendBody: true,
      bottomNavigationBar: const CustomNavbar(currentIndex: 0),

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
            padding: const EdgeInsets.all(20),

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                const SizedBox(height: 10),

                const ParanormalTitle(
                  text: '¿QUÉ ES UN\nFENÓMENO PARANORMAL?',
                  size: 30,
                ),

                const SizedBox(height: 25),

                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,

                  children: [
                    Expanded(
                      flex: 6,

                      child: Text(
                        'Un fenómeno paranormal es todo aquel suceso o experiencia '
                        'inusual que parece contradecir las leyes de la naturaleza '
                        'y los modelos científicos actuales.\n\n'
                        'Estos acontecimientos no cuentan con una explicación '
                        'empírica comprobable y suelen atribuirse a orígenes '
                        'sobrenaturales, mágicos o dimensiones desconocidas.',

                        style: GoogleFonts.specialElite(
                          fontSize: 12,
                          height: 1.7,
                          color: Colors.black87,
                        ),
                      ),
                    ),

                    const SizedBox(width: 18),

                    Expanded(
                      flex: 4,

                      child: SizedBox(
                        height: 240,

                        child: Stack(
                          clipBehavior: Clip.none,

                          alignment: Alignment.center,

                          children: [
                            // ===== IMAGEN PRINCIPAL =====
                            Positioned(
                              bottom: 0,

                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(22),

                                child: Stack(
                                  children: [
                                    Image.network(
                                      'https://ik.imagekit.io/VIPparanormal/-cu-l_es_la_diferencia_entre_un_fen-meno_paranormal_y_uno_sobrenatural_-1-_1.png_69363498.png',

                                      height: 150,

                                      width: 160,

                                      fit: BoxFit.cover,
                                    ),

                                    // overlay oscuro
                                    Container(
                                      height: 150,
                                      width: 160,

                                      decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                          begin: Alignment.topCenter,
                                          end: Alignment.bottomCenter,

                                          colors: [
                                            Colors.transparent,

                                            Colors.black.withOpacity(0.35),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),

                            // ===== IMAGEN FANTASMA =====
                            Positioned(
                              top: -10,
                              right: -20,

                              child: Opacity(
                                opacity: 0.38,

                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(22),

                                  child: Image.network(
                                    'https://ik.imagekit.io/VIPparanormal/Senales-de-que-tu-casa-puede-tener-alguna-presencia-paranormal.webp',

                                    height: 130,

                                    width: 120,

                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 35),

                const ParanormalTitle(text: 'EXPERTOS', size: 26),

                const SizedBox(height: 25),

                const ExpertCard(
                  name: 'Dr. Chris French',

                  description:
                      'Investigador británico y director de la Unidad de Investigación de Psicología Anomalista de la Universidad de Goldsmiths. ',

                  image:
                      'https://ik.imagekit.io/VIPparanormal/toql9cd6elf204l9js2j8hkid5.jpg',
                ),

                const ExpertCard(
                  name: 'Joe Nickell',

                  description:
                      'Investigador principal del Comité para la Investigación Escéptica (CSI)',

                  image:
                      'https://ik.imagekit.io/VIPparanormal/images_q=tbn:ANd9GcQtEudfzUUFTQjm03fTFw5R8vL512p6gNriRQ&s',
                ),

                const ExpertCard(
                  name: 'Dr. Saúl Martínez-Horta',

                  description:
                      'Neuropsicólogo clínico que explica cómo las alteraciones neurológicas, los trastornos del sueño y las alucinaciones.',

                  image:
                      'https://ik.imagekit.io/VIPparanormal/000082954_1_038_202310101657.JPG',
                ),
                const ExpertCard(
                  name: 'Rafael Taibo (España / Colombia)',

                  description:
                      'Reconocido investigador y presentador que ha liderado expediciones en lugares marcados por la tragedia en territorio colombiano, documentando casos y fenómenos inexplicables .',

                  image:
                      'https://ik.imagekit.io/VIPparanormal/images_q=tbn:ANd9GcRMrDuLzptQwq5eqdBRY9wyxHhpExJgi_OOZA&s?updatedAt=1779761907926',
                ),

                const SizedBox(height: 30),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
