import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ArticleCard extends StatelessWidget {
  final String title;
  final String description;
  final String image;

  const ArticleCard({
    super.key,
    required this.title,
    required this.description,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {

    return Container(

      margin: const EdgeInsets.only(bottom: 22),

      decoration: BoxDecoration(

        color: Colors.white.withOpacity(0.05),

        borderRadius: BorderRadius.circular(24),

        border: Border.all(
          color: Colors.white10,
          width: 1,
        ),

        boxShadow: [

          BoxShadow(

            color: Colors.black.withOpacity(0.35),

            blurRadius: 18,

            offset: const Offset(0, 8),
          ),
        ],
      ),

      child: Padding(

        padding: const EdgeInsets.all(14),

        child: Row(

          crossAxisAlignment: CrossAxisAlignment.start,

          children: [

            // ===== IMAGEN =====

            ClipRRect(

              borderRadius: BorderRadius.circular(18),

              child: Stack(

                children: [

                  Image.network(

                    image,

                    width: 88,
                    height: 88,

                    fit: BoxFit.cover,
                  ),

                  // overlay oscuro
                  Container(

                    width: 88,
                    height: 88,

                    decoration: BoxDecoration(

                      gradient: LinearGradient(

                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,

                        colors: [

                          Colors.transparent,

                          Colors.black.withOpacity(0.45),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(width: 16),

            // ===== TEXTO =====

            Expanded(

              child: Column(

                crossAxisAlignment:
                    CrossAxisAlignment.start,

                children: [

                  Text(

                    title,

                    style:
                        GoogleFonts.specialElite(

                      fontSize: 17,

                      height: 1.3,

                      color: Colors.red.shade300,
                    ),
                  ),

                  const SizedBox(height: 8),

                  Text(

                    description,

                    style: TextStyle(

                      fontSize: 13,

                      height: 1.7,

                      color:
                          Colors.white.withOpacity(0.72),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}