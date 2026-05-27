import 'package:flutter/material.dart';

class GhostImage extends StatelessWidget {

  final String image;
  final double size;

  const GhostImage({
    super.key,
    required this.image,
    required this.size,
  });

  @override
  Widget build(BuildContext context) {

    return Container(

      width: size,
      height: size,

      decoration: BoxDecoration(

        shape: BoxShape.circle,

        border: Border.all(

          color: Colors.white.withOpacity(0.18),

          width: 2,
        ),

        boxShadow: [

          // sombra principal
          BoxShadow(

            color: Colors.black.withOpacity(0.45),

            blurRadius: 18,

            offset: const Offset(0, 8),
          ),

          // glow rojizo paranormal
          BoxShadow(

            color: Colors.red.withOpacity(0.08),

            blurRadius: 20,

            spreadRadius: 2,
          ),
        ],
      ),

      child: ClipOval(

        child: Stack(

          fit: StackFit.expand,

          children: [

            // ===== IMAGEN =====

            Image.network(

              image,

              fit: BoxFit.cover,
            ),

            // ===== OVERLAY OSCURO =====

            Container(

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

            // ===== CAPA ESPECTRAL =====

            Container(

              decoration: BoxDecoration(

                color: Colors.white.withOpacity(0.04),
              ),
            ),
          ],
        ),
      ),
    );
  }
}