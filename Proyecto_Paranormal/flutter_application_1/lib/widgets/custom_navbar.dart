import 'dart:ui';

import 'package:flutter/material.dart';

import '../screens/questions_screen.dart';
import '../screens/read_screen.dart';
import '../screens/news_screen.dart';
import '../screens/myths_screen.dart';
import '../screens/multimedia_screen.dart';
import '../screens/comments_screen.dart';

class CustomNavbar extends StatelessWidget {

  final int currentIndex;

  const CustomNavbar({
    super.key,
    required this.currentIndex,
  });

  // ===== NAVEGACION =====

  void navigate(BuildContext context, int index) {

    Widget screen;

    switch (index) {

      case 0:
        screen = const QuestionsScreen();
        break;

      case 1:
        screen = const ReadScreen();
        break;

      case 2:
        screen = const NewsScreen();
        break;

      case 3:
        screen = const MythsScreen();
        break;

      case 4:
        screen = const MultimediaScreen();
        break;

      default:
        screen = const CommentsScreen();
    }

    Navigator.pushReplacement(

      context,

      PageRouteBuilder(

        pageBuilder:
            (_, animation, __) => screen,

        transitionsBuilder:
            (_, animation, __, child) {

          return FadeTransition(
            opacity: animation,
            child: child,
          );
        },

        transitionDuration:
            const Duration(milliseconds: 220),
      ),
    );
  }

  // ===== ITEM =====

  Widget navItem({
    required BuildContext context,
    required IconData icon,
    required int index,
  }) {

    bool isActive = currentIndex == index;

    return GestureDetector(

      onTap: () => navigate(context, index),

      child: AnimatedContainer(

        duration:
            const Duration(milliseconds: 220),

        width: 40,
        height: 40,

        decoration: BoxDecoration(

          color: isActive
              ? Colors.red.withOpacity(0.18)
              : Colors.transparent,

          shape: BoxShape.circle,

          border: isActive
              ? Border.all(
                  color: Colors.red.withOpacity(0.4),
                  width: 1,
                )
              : null,

          boxShadow: isActive
              ? [

                  BoxShadow(

                    color:
                        Colors.red.withOpacity(0.25),

                    blurRadius: 12,

                    spreadRadius: 1,
                  ),
                ]
              : [],
        ),

        child: Icon(

          icon,

          size: 19,

          color: isActive
              ? Colors.red.shade400
              : Colors.white70,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {

    return Padding(

      padding: const EdgeInsets.only(
        left: 14,
        right: 14,
        bottom: 12,
      ),

      child: ClipRRect(

        borderRadius:
            BorderRadius.circular(26),

        child: BackdropFilter(

          filter: ImageFilter.blur(
            sigmaX: 10,
            sigmaY: 10,
          ),

          child: Container(

            height: 62,

            padding:
                const EdgeInsets.symmetric(
              horizontal: 8,
            ),

            decoration: BoxDecoration(

              color:
                  const Color(0xFF1E1E1E)
                      .withOpacity(0.78),

              borderRadius:
                  BorderRadius.circular(26),

              border: Border.all(
                color: Colors.white12,
              ),

              boxShadow: [

                BoxShadow(

                  color:
                      Colors.black.withOpacity(0.35),

                  blurRadius: 18,

                  offset: const Offset(0, 8),
                ),
              ],
            ),

            child: Row(

              mainAxisAlignment:
                  MainAxisAlignment.spaceAround,

              children: [

                navItem(
                  context: context,
                  icon: Icons.question_mark,
                  index: 0,
                ),

                navItem(
                  context: context,
                  icon: Icons.menu_book,
                  index: 1,
                ),

                navItem(
                  context: context,
                  icon: Icons.newspaper,
                  index: 2,
                ),

                navItem(
                  context: context,
                  icon: Icons.psychology,
                  index: 3,
                ),

                navItem(
                  context: context,
                  icon: Icons.video_library,
                  index: 4,
                ),

                navItem(
                  context: context,
                  icon: Icons.masks,
                  index: 5,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
