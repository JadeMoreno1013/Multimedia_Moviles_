import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MultimediaCard extends StatelessWidget {
  final String image;
  final String title;
  final String description;
  final bool videoLeft;

  const MultimediaCard({
    super.key,
    required this.image,
    required this.title,
    required this.description,
    this.videoLeft = true,
  });

  @override
  Widget build(BuildContext context) {
    Widget videoWidget = Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(14),
              child: Image.network(
                image,
                width: 130,
                height: 95,
                fit: BoxFit.cover,
              ),
            ),

            // overlay oscuro
            Container(
              width: 130,
              height: 95,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14),
                gradient: LinearGradient(
                  colors: [
                    Colors.black.withOpacity(0.15),
                    Colors.black.withOpacity(0.75),
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
            ),

            // play button
            Container(
              width: 42,
              height: 42,
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.08),
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: Colors.white.withOpacity(0.15),
                ),
              ),
              child: const Icon(
                Icons.play_arrow,
                color: Colors.white,
                size: 26,
              ),
            ),
          ],
        ),

        const SizedBox(height: 8),

        // acción debajo del video
        Text(
          'Abrir archivo →',
          style: TextStyle(
            fontSize: 11,
            color: Colors.redAccent.withOpacity(0.7),
            letterSpacing: 0.4,
          ),
        ),
      ],
    );

    Widget textWidget = Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 14),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: GoogleFonts.cinzelDecorative(
                fontSize: 14,
                fontWeight: FontWeight.w700,
                color: Colors.white,
              ),
            ),

            const SizedBox(height: 8),

            Text(
              description,
              style: const TextStyle(
                fontSize: 11,
                height: 1.6,
                color: Colors.white70,
              ),
            ),
          ],
        ),
      ),
    );

    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      padding: const EdgeInsets.all(14),

      decoration: BoxDecoration(
        color: const Color(0xFF121212),

        borderRadius: BorderRadius.circular(20),

        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.55),
            blurRadius: 18,
            offset: const Offset(0, 10),
          ),
        ],
      ),

      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: videoLeft
            ? [videoWidget, textWidget]
            : [textWidget, videoWidget],
      ),
    );
  }
}