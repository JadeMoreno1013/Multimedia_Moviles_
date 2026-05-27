import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GhostButton extends StatefulWidget {

  final String text;
  final IconData icon;
  final VoidCallback onPressed;

  const GhostButton({
    super.key,
    required this.text,
    required this.icon,
    required this.onPressed,
  });

  @override
  State<GhostButton> createState() =>
      _GhostButtonState();
}

class _GhostButtonState
    extends State<GhostButton> {

  bool isPressed = false;

  @override
  Widget build(BuildContext context) {

    return GestureDetector(

      onTapDown: (_) {
        setState(() {
          isPressed = true;
        });
      },

      onTapUp: (_) {
        setState(() {
          isPressed = false;
        });

        widget.onPressed();
      },

      onTapCancel: () {
        setState(() {
          isPressed = false;
        });
      },

      child: AnimatedContainer(

        duration:
            const Duration(milliseconds: 140),

        width: 230,
        height: 45,

        transform:
            Matrix4.identity()
              ..scale(
                isPressed ? 0.96 : 1.0,
              ),

        decoration: BoxDecoration(

          borderRadius:
              BorderRadius.circular(30),

          gradient: LinearGradient(

            begin: Alignment.topLeft,
            end: Alignment.bottomRight,

            colors: [

              const Color(0xFF2A2A2A)
                  .withOpacity(0.95),

              const Color(0xFF151515)
                  .withOpacity(0.92),
            ],
          ),

          border: Border.all(
            color:
                Colors.red.withOpacity(0.25),
          ),

          boxShadow: [

            // sombra principal
            BoxShadow(

              color:
                  Colors.black.withOpacity(0.35),

              blurRadius: 16,

              offset: const Offset(0, 8),
            ),

            // glow rojo
            BoxShadow(

              color:
                  Colors.red.withOpacity(
                    isPressed
                        ? 0.12
                        : 0.25,
                  ),

              blurRadius:
                  isPressed ? 8 : 18,

              spreadRadius:
                  isPressed ? 0 : 1,
            ),
          ],
        ),

        child: Row(

          mainAxisAlignment:
              MainAxisAlignment.center,

          children: [

            Icon(

              widget.icon,

              size: 20,

              color: Colors.red.shade300,
            ),

            const SizedBox(width: 10),

            Text(

              widget.text,

              style: GoogleFonts.cinzel(

                fontSize: 15,

                fontWeight:
                    FontWeight.bold,

                color: Colors.white,

                letterSpacing: 1.2,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/*
import 'package:flutter/material.dart';

class GhostButton extends StatelessWidget {

  final String text;
  final IconData icon;
  final VoidCallback onPressed;

  const GhostButton({
    super.key,
    required this.text,
    required this.icon,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {

    return ElevatedButton.icon(

      onPressed: onPressed,

      icon: Icon(
        icon,
        color: Colors.white,
        size: 18,
      ),

      label: Text(
        text,
        style: const TextStyle(
          color: Colors.white,
        ),
      ),

      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.grey.shade500,

        elevation: 8,

        shadowColor: Colors.red,

        padding: const EdgeInsets.symmetric(
          horizontal: 28,
          vertical: 15,
        ),

        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
      ),
    );
  }
}
*/