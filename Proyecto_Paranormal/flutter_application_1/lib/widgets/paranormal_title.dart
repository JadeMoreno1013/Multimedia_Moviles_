import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ParanormalTitle extends StatelessWidget {

  final String text;
  final double size;
  final bool centered;

  const ParanormalTitle({
    super.key,
    required this.text,
    this.size = 34,
    this.centered = true,
  });

  @override
  Widget build(BuildContext context) {

    return Column(

      crossAxisAlignment:
          centered
              ? CrossAxisAlignment.center
              : CrossAxisAlignment.start,

      children: [

        // ===== TITULO =====

        Text(

          text,

          textAlign:
              centered
                  ? TextAlign.center
                  : TextAlign.left,

          style: GoogleFonts.creepster(

            fontSize: size,

            color: const Color(0xFFB71C1C),

            letterSpacing: 2,

            height: 1,

            shadows: [

              // sombra oscura principal
              Shadow(
                color:
                    Colors.black.withOpacity(0.45),

                offset: const Offset(0, 4),

                blurRadius: 10,
              ),

              // glow rojo
              Shadow(
                color:
                    Colors.red.withOpacity(0.35),

                offset: const Offset(0, 0),

                blurRadius: 18,
              ),

              // profundidad extra
              Shadow(
                color:
                    Colors.black.withOpacity(0.25),

                offset: const Offset(2, 2),

                blurRadius: 4,
              ),
            ],
          ),
        ),

        const SizedBox(height: 8),

        // ===== LINEA DECORATIVA =====

        Container(

          width: size * 2.2,

          height: 2,

          decoration: BoxDecoration(

            gradient: LinearGradient(

              colors: [

                Colors.transparent,

                Colors.red.shade700,

                Colors.transparent,
              ],
            ),

            boxShadow: [

              BoxShadow(

                color:
                    Colors.red.withOpacity(0.35),

                blurRadius: 10,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
/*
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ParanormalTitle extends StatelessWidget {
  final String text;
  final double size;

  const ParanormalTitle({super.key, required this.text, this.size = 42});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,

      textAlign: TextAlign.center,

      style:  GoogleFonts.creepster(
        color: Colors.red.shade700,
        fontSize: size,
        fontWeight: FontWeight.bold,
        letterSpacing: 2,
      ),

    );
  }
}
*/