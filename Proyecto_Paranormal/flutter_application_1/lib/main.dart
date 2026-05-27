import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'screens/home_screen.dart';

void main() {
  runApp(const VipParanormalApp());
}

class VipParanormalApp extends StatelessWidget {
  const VipParanormalApp({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(

      debugShowCheckedModeBanner: false,

      title: 'VIP Paranormal',

      theme: ThemeData(

        scaffoldBackgroundColor:
            const Color(0xFFEDEDED),

        primaryColor:
            const Color(0xFFB71C1C),

        colorScheme: ColorScheme.fromSeed(

          seedColor:
              const Color(0xFFB71C1C),

          primary:
              const Color(0xFFB71C1C),

          secondary:
              const Color(0xFF2E2E2E),
        ),

        textTheme: TextTheme(

          bodyMedium:
              GoogleFonts.specialElite(

            color: Colors.black87,

            fontSize: 14,

            height: 1.5,
          ),

          bodySmall:
              GoogleFonts.specialElite(

            color: Colors.black54,

            fontSize: 12,
          ),

          titleLarge:
              GoogleFonts.cinzel(

            color: Colors.black87,

            fontWeight:
                FontWeight.bold,
          ),
        ),

        inputDecorationTheme:
            InputDecorationTheme(

          filled: true,

          fillColor:
              const Color(0xFFDCDCDC),

          contentPadding:
              const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 16,
          ),

          border: OutlineInputBorder(

            borderRadius:
                BorderRadius.circular(28),

            borderSide:
                BorderSide.none,
          ),

          enabledBorder:
              OutlineInputBorder(

            borderRadius:
                BorderRadius.circular(28),

            borderSide:
                BorderSide.none,
          ),

          focusedBorder:
              OutlineInputBorder(

            borderRadius:
                BorderRadius.circular(28),

            borderSide:
                const BorderSide(
              color:
                  Color(0xFFB71C1C),

              width: 2,
            ),
          ),
        ),

        splashColor:
            Colors.transparent,

        highlightColor:
            Colors.transparent,

        hoverColor:
            Colors.transparent,
      ),

      home: const HomeScreen(),
    );
  }
}
/*import 'package:flutter/material.dart';

import 'screens/home_screen.dart';

void main() {
  runApp(const VipParanormalApp());
}

class VipParanormalApp extends StatelessWidget {
  const VipParanormalApp({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(

      debugShowCheckedModeBanner: false,

      title: 'VIP Paranormal',

      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFFF2F2F2),
      ),

      home: const HomeScreen(),
    );
  }
}
*/