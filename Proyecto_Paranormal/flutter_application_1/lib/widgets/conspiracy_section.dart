import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'conspiracy_card.dart';

class ConspiracySection extends StatelessWidget {

  final String title;
  final List<ConspiracyCard> cards;

  const ConspiracySection({
    super.key,
    required this.title,
    required this.cards,
  });

  @override
  Widget build(BuildContext context) {

    return Column(

      crossAxisAlignment: CrossAxisAlignment.start,

      children: [

        // ===== TITULO =====

        Text(
          title,

          style: GoogleFonts.imFellEnglishSc(
            fontSize: 24,
            color: Colors.red.shade800,
            letterSpacing: 1.5,
          ),
        ),

        const SizedBox(height: 10),

        // ===== CARRUSEL =====

        SizedBox(

          height: 300,

          child: ListView.separated(

            scrollDirection: Axis.horizontal,

            physics: const BouncingScrollPhysics(),

            itemCount: cards.length,

            separatorBuilder: (_, __) =>
                const SizedBox(width: 16),

            itemBuilder: (context, index) {

              return SizedBox(
                width: 210,
                child: cards[index],
              );
            },
          ),
        ),
      ],
    );
  }
}