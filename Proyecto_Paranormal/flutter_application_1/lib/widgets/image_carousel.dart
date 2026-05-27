import 'dart:async';

import 'package:flutter/material.dart';

class ImageCarousel extends StatefulWidget {

  const ImageCarousel({super.key});

  @override
  State<ImageCarousel> createState() =>
      _ImageCarouselState();
}

class _ImageCarouselState
    extends State<ImageCarousel> {

  int currentImage = 0;

  Timer? timer;

  final List<String> images = [

    'https://ik.imagekit.io/VIPparanormal/images_q=tbn:ANd9GcR61VmUo3DGUaArRNJCmLtcxLMK27chV9iw2Q&s',

    'https://ik.imagekit.io/VIPparanormal/Senales-de-que-tu-casa-puede-tener-alguna-presencia-paranormal.webp',

    'https://ik.imagekit.io/VIPparanormal/mar18-feature-paranormalresearch-644.jpg',
  ];

  @override
  void initState() {

    super.initState();

    timer = Timer.periodic(

      const Duration(seconds: 5),

      (_) {

        setState(() {

          currentImage =
              (currentImage + 1) %
                  images.length;
        });
      },
    );
  }

  @override
  void dispose() {

    timer?.cancel();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    return SizedBox(

      height: 220,

      child: Center(

        child: AnimatedSwitcher(

          duration:
              const Duration(milliseconds: 1800),

          switchInCurve:
              Curves.easeInOut,

          switchOutCurve:
              Curves.easeInOut,

          transitionBuilder:
              (child, animation) {

            return FadeTransition(
              opacity: animation,
              child: child,
            );
          },

          child: Container(

            key: ValueKey(
              images[currentImage],
            ),

            width: 200,
            height: 200,

            decoration: BoxDecoration(

              shape: BoxShape.circle,

              boxShadow: [

                // sombra profunda
                BoxShadow(

                  color:
                      Colors.black.withOpacity(0.65),

                  blurRadius: 24,

                  offset: const Offset(0, 12),
                ),

                // glow rojo MUY tenue
                BoxShadow(

                  color:
                      Colors.red.withOpacity(0.08),

                  blurRadius: 20,
                ),
              ],

              border: Border.all(

                color: Colors.white10,

                width: 1.2,
              ),
            ),

            child: ClipOval(

              child: Stack(

                fit: StackFit.expand,

                children: [

                  // ===== IMAGEN =====

                  Image.network(

                    images[currentImage],

                    fit: BoxFit.cover,
                  ),

                  // ===== OVERLAY OSCURO =====

                  Container(

                    decoration: BoxDecoration(

                      gradient: LinearGradient(

                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,

                        colors: [

                          Colors.black
                              .withOpacity(0.20),

                          Colors.black
                              .withOpacity(0.55),
                        ],
                      ),
                    ),
                  ),

                  // ===== VIGNETTE =====

                  Container(

                    decoration: BoxDecoration(

                      gradient: RadialGradient(

                        radius: 1.15,

                        colors: [

                          Colors.transparent,

                          Colors.black
                              .withOpacity(0.40),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}