import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MythCard extends StatelessWidget {

  final String image;
  final String title;
  final String description;

  const MythCard({
    super.key,
    required this.image,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {

    return SizedBox(

      width: 82,

      child: Column(

        crossAxisAlignment: CrossAxisAlignment.start,

        children: [

          // ===== IMAGEN =====

          ClipRRect(

            borderRadius: BorderRadius.circular(6),

            child: Image.network(
              image,

              height: 72,
              width: 82,

              fit: BoxFit.cover,
            ),
          ),

          const SizedBox(height: 6),

          // ===== TITULO =====

          Text(
            title,

            maxLines: 2,

            overflow: TextOverflow.ellipsis,

            style: GoogleFonts.cinzel(

              fontSize: 9,

              fontWeight: FontWeight.bold,

              color: Colors.red.shade700,

              height: 1.2,
            ),
          ),

          const SizedBox(height: 3),

          // ===== DESCRIPCIÓN =====

          Text(
            description,

            maxLines: 3,

            overflow: TextOverflow.ellipsis,

            style: const TextStyle(
              fontSize: 7.5,
              height: 1.3,
              color: Colors.black87,
            ),
          ),
        ],
      ),
    );
  }
}