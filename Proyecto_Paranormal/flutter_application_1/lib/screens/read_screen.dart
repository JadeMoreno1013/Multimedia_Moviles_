import 'package:flutter/material.dart';

import '../widgets/custom_navbar.dart';
import '../widgets/paranormal_title.dart';
import '../widgets/article_card.dart';
import '../widgets/ghost_image.dart';
import '../widgets/ghost_background.dart';
import 'package:google_fonts/google_fonts.dart';

class ReadScreen extends StatelessWidget {
  const ReadScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      extendBody: true,
      bottomNavigationBar: const CustomNavbar(currentIndex: 1),

      body: GhostBackground(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8),

            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),

              child: Column(
                children: [
                  const SizedBox(height: 5),

                  const ParanormalTitle(
                    text: 'TIPOS DE COSAS\nPARANORMALES',
                    size: 34,
                  ),

                  const SizedBox(height: 15),

                  Container(
                    padding: const EdgeInsets.all(16),


                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,

                      children: [
                        // ===== IMÁGENES =====
                        Expanded(
                          flex: 4,

                          child: SizedBox(
                            height: 250,

                            child: Stack(
                              clipBehavior: Clip.none,

                              children: [
                                Positioned(
                                  top: 0,
                                  left: -20,

                                  child: GhostImage(
                                    image:
                                        'https://ik.imagekit.io/VIPparanormal/C7ONCZCQ7FADPMRUISI7PXBMHI.jpg_auth=f03355629817fa42ca7557a3389a625dfd11364ed9fb2407950c444c7fbde7f7&smart=true&quality=75&width=240&height=135',

                                    size: 105,
                                  ),
                                ),

                                Positioned(
                                  top: 72,
                                  left: 12,

                                  child: GhostImage(
                                    image:
                                        'https://ik.imagekit.io/VIPparanormal/images_q=tbn:ANd9GcQSPHQ96Ib6c9aw6qkSUoQVo5JasRF--i4o4A&s',

                                    size: 110,
                                  ),
                                ),

                                Positioned(
                                  top: 148,
                                  left: -20,

                                  child: GhostImage(
                                    image:
                                        'https://ik.imagekit.io/VIPparanormal/horror-scary-movie-concept-hand-260nw-1911974998.jpg',

                                    size: 105,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),

                        const SizedBox(width: 16),

                        // ===== TEXTO =====
                        Expanded(
                          flex: 6,

                          child: Text(
                            'Los fenómenos paranormales se dividen principalmente en manifestaciones espirituales o de apariciones, como los fantasmas y los poltergeists que mueven objetos físicos; habilidades psíquicas o mentales ajenas a los sentidos conocidos, que incluyen la telepatía, la clarividencia y la telequinesis; y sucesos criptozoológicos o ufológicos, vinculados al avistamiento de criaturas desconocidas y objetos voladores no identificados.',

                            textAlign: TextAlign.right,

                            style: GoogleFonts.specialElite(
                              fontSize: 11.5,

                              height: 1.9,

                              color: Colors.white70,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 35),

                  Column(
                    children: [
                      ArticleCard(
                        title: 'Psicoquinesis:',

                        description:
                            'Capacidad de la mente para alterar o mover objetos a distancia.',

                        image:
                            'https://ik.imagekit.io/VIPparanormal/miedo-mujer-espejo-tenebroso.jpg',
                      ),

                      const SizedBox(height: 10),

                      ArticleCard(
                        title: 'Apariciones y criaturas anómalas:',

                        description:
                            'SAvistamientos de criptozoología, ovnis y tecnología tradicional.',

                        image:
                            'https://ik.imagekit.io/VIPparanormal/653f50f6796ab.jpeg',
                      ),

                      const SizedBox(height: 10),

                      ArticleCard(
                        title: 'Percepción extrasensorial:',

                        description:
                            'Como la telepatía, la clarividencia o la precognición.',

                        image:
                            'https://ik.imagekit.io/VIPparanormal/images_q=tbn:ANd9GcQPnvuHhIp4xX0uBT61TiUezQvGGVS-TvRUdA&s',
                      ),

                      const SizedBox(height: 10),

                      ArticleCard(
                        title: 'Manifestaciones de energía y espíritus:',

                        description:
                            'Sucesos asociados a entidades invisibles. ',

                        image:
                            'https://ik.imagekit.io/VIPparanormal/Danny_Phantom.webp',
                      ),
                    ],
                  ),

                  const SizedBox(height: 30),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
