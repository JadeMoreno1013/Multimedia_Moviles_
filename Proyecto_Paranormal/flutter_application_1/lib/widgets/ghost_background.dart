import 'package:flutter/material.dart';

class GhostBackground extends StatelessWidget {

  final Widget child;

  const GhostBackground({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {

    return Container(

      width: double.infinity,
      height: double.infinity,

      decoration: const BoxDecoration(

        gradient: LinearGradient(

          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,

          colors: [

            Color(0xFF111111),
            Color(0xFF1B1B1B),
            Color(0xFF101010),
          ],
        ),
      ),

      child: Stack(

        children: [

          // ===== TEXTURA SUAVE =====

          Opacity(

            opacity: 0.06,

            child: Image.network(

              'https://images.unsplash.com/photo-1506744038136-46273834b3fb',

              width: double.infinity,
              height: double.infinity,

              fit: BoxFit.cover,
            ),
          ),

          // ===== OVERLAY ROJO =====

          Container(

            decoration: BoxDecoration(

              gradient: RadialGradient(

                center: Alignment.topCenter,

                radius: 1.4,

                colors: [

                  Colors.red.withOpacity(0.10),

                  const Color.fromARGB(0, 158, 157, 157),
                ],
              ),
            ),
          ),

          // ===== SOMBRA INFERIOR =====

          Container(

            decoration: const BoxDecoration(

              gradient: LinearGradient(

                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,

                colors: [

                  Colors.transparent,

                  Color(0xCC000000),
                ],
              ),
            ),
          ),

          // ===== CONTENIDO =====

          child,
        ],
      ),
    );
  }
}