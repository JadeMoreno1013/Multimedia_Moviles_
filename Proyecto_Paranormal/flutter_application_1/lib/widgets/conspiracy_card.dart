import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ConspiracyCard extends StatelessWidget {
  final String image;
  final String title;
  final String description;

  const ConspiracyCard({
    super.key,
    required this.image,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [
            Color(0xFF0A0A0D),
            Color(0xFF12121A),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),

        borderRadius: BorderRadius.circular(22),

        // 🔥 SOMBRA INDIVIDUAL (más suave y “flotante”)
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.45),
            blurRadius: 22,
            offset: const Offset(0, 10),
          ),
          BoxShadow(
            color: Colors.black.withOpacity(0.25),
            blurRadius: 40,
            offset: const Offset(0, 20),
          ),
        ],
      ),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // ===== IMAGEN =====
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(22),
              topRight: Radius.circular(22),
            ),
            child: Stack(
              children: [
                Image.network(
                  image,
                  height: 140,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),

                // overlay más suave (menos agresivo)
                Container(
                  height: 140,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Colors.black.withOpacity(0.1),
                        Colors.black.withOpacity(0.75),
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                  ),
                ),
              ],
            ),
          ),

          // ===== TEXTO =====
          Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.cinzelDecorative(
                    fontSize: 15,
                    fontWeight: FontWeight.w700,
                    color: const Color(0xFFE8E2D0), // más neutro elegante
                    height: 1.3,
                  ),
                ),

                const SizedBox(height: 6),

                Text(
                  description,
                  maxLines: 4,
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.inter(
                    fontSize: 12,
                    height: 1.6,
                    color: Colors.white70,
                  ),
                ),

                const SizedBox(height: 12),

                // etiqueta suave (sin rojo)
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 4,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.06),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text(
                    "CLASSIFIED FILE",
                    style: GoogleFonts.inter(
                      fontSize: 10,
                      color: Colors.white60,
                      letterSpacing: 1.2,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}