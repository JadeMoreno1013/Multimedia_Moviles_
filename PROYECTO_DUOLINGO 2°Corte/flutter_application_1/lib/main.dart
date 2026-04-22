import 'package:flutter/material.dart';
import './Widgets/lesson_card.dart';
import './Widgets/lesson_Node.dart';

void main() {
  runApp(const MainApp());
}

//Definimos colores de las secciones
const Color section1Color = Color(0xFF58CC02);
const Color section2Color = Color(0xFFC209DA);

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        //AppBar - Barra superior
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,

          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              /// Idioma
              Row(
                children: const [
                  Text("🇺🇸", style: TextStyle(fontSize: 20)),
                  SizedBox(width: 6),
                  Text(
                    "39",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 47, 47, 48),
                      fontSize: 16,
                    ),
                  ),
                ],
              ),

              /// Racha
              Row(
                children: const [
                  Icon(
                    Icons.local_fire_department,
                    color: Color.fromARGB(255, 255, 145, 1),
                  ),
                  SizedBox(width: 4),
                  Text(
                    "55",
                    style: TextStyle(
                      color: Color.fromARGB(255, 255, 145, 1),
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),

              /// Gemas
              Row(
                children: const [
                  Icon(Icons.hexagon, color: Color(0xFF1CB0F6)),
                  SizedBox(width: 4),
                  Text(
                    "3520",
                    style: TextStyle(
                      color: Color(0xFF1CB0F6),
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),

              /// Energía
              Row(
                children: [
                  Transform.rotate(
                    angle: 1.57, // Girado 90 grados
                    child: const Icon(
                      Icons.battery_charging_full,
                      color: Color(0xFFFF4B91),
                    ),
                  ),
                  SizedBox(width: 4),
                  Text(
                    "25",
                    style: TextStyle(
                      color: Color(0xFFFF4B91),
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),

              /// Perfil
              Row(
                children: const [
                  Icon(Icons.person, color: Color.fromARGB(255, 156, 2, 177)),
                  SizedBox(width: 4),
                  Text(
                    "Perfil",
                    style: TextStyle(
                      color: Color.fromARGB(255, 156, 2, 177),
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),

        body: Builder(
          builder: (context) {
            final width = MediaQuery.of(context).size.width;
            final height = MediaQuery.of(context).size.height;

            return ListView(
              children: [
                // Carta sección 1
                LessonCard(
                  title: "ETAPA 1, SECCIÓN 1",
                  subtitle: "Ordena en un café",
                  icon: Icons.list_alt_outlined,
                  color: const Color.fromARGB(255, 9, 218, 16),
                ),

                SizedBox(height: height * 0.03),

                // Contenido sección 1
                Align(
                  alignment: Alignment.center,
                  child: LessonNode(
                    width: width,
                    content: Icons.star,
                    color: section1Color,
                  ),
                ),

                SizedBox(height: height * 0.04),

                Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: EdgeInsets.only(right: width * 0.25),
                    child: LessonNode(
                      width: width,
                      content: Icons.menu_book,
                      color: section1Color,
                    ),
                  ),
                ),

                SizedBox(height: height * 0.04),

                Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: EdgeInsets.only(right: width * 0.35),
                    child: LessonNode(
                      width: width,
                      content: Icons.star,
                      color: section1Color,
                    ),
                  ),
                ),

                SizedBox(height: height * 0.04),

                Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: EdgeInsets.only(right: width * 0.25),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Image.asset(
                          "assets/cofre_duo.jpeg",
                          width: width * 0.18,
                          height: width * 0.18,
                        ),

                        SizedBox(width: 10),

                        Image.asset(
                          "assets/Foto_Duo.jpeg",
                          width: width * 0.30,
                          height: width * 0.30,
                        ),
                      ],
                    ),
                  ),
                ),

                SizedBox(height: height * 0.04),

                Align(
                  alignment: Alignment.center,
                  child: LessonNode(
                    width: width,
                    content: Icons.headphones,
                    color: section1Color,
                  ),
                ),

                SizedBox(height: height * 0.04),

                Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: EdgeInsets.only(left: width * 0.25),
                    child: LessonNode(
                      width: width,
                      content: Icons.star,
                      color: section1Color,
                    ),
                  ),
                ),

                SizedBox(height: height * 0.04),

                // DIVISOR
                Row(
                  children: [
                    Expanded(
                      child: Divider(thickness: 1, color: Colors.grey[400]),
                    ),

                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        "Saluda y preséntate",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),

                    Expanded(
                      child: Divider(thickness: 1, color: Colors.grey[400]),
                    ),
                  ],
                ),

                SizedBox(height: height * 0.03),

                // Carta sección 2
                LessonCard(
                  title: "ETAPA 1, SECCIÓN 2",
                  subtitle: "Saluda y preséntate",
                  icon: Icons.list_alt_outlined,
                  color: const Color.fromARGB(255, 194, 9, 218),
                ),

                SizedBox(height: height * 0.03),

                Align(
                  alignment: Alignment.center,
                  child: LessonNode(
                    width: width,
                    content: Icons.star,
                    color: section2Color,
                  ),
                ),

                SizedBox(height: height * 0.04),

                Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: EdgeInsets.only(left: width * 0.25),
                    child: LessonNode(
                      width: width,
                      content: Icons.menu_book,
                      color: section2Color,
                    ),
                  ),
                ),

                SizedBox(height: height * 0.04),

                Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: EdgeInsets.only(left: width * 0.35),
                    child: LessonNode(
                      width: width,
                      content: Icons.star,
                      color: section2Color,
                    ),
                  ),
                ),

                Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: EdgeInsets.only(left: width * 0.25),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Image.asset(
                          "assets/Chica.jpeg",
                          width: width * 0.30,
                          height: width * 0.30,
                        ),

                        SizedBox(width: 10),

                        Image.asset(
                          "assets/cofre_duo.jpeg",
                          width: width * 0.18,
                          height: width * 0.18,
                        ),
                      ],
                    ),
                  ),
                ),

                SizedBox(height: height * 0.04),

                Align(
                  alignment: Alignment.center,
                  child: LessonNode(
                    width: width,
                    content: Icons.headphones,
                    color: section2Color,
                  ),
                ),

                SizedBox(height: height * 0.04),

                Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: EdgeInsets.only(right: width * 0.25),
                    child: LessonNode(
                      width: width,
                      content: Icons.star,
                      color: section2Color,
                    ),
                  ),
                ),

                SizedBox(height: height * 0.04),

                Align(
                  alignment: Alignment.center,
                  child: LessonNode(
                    width: width,
                    content: Icons.headphones,
                    color: section2Color,
                  ),
                ),

                SizedBox(height: height * 0.04),
              ],
            );
          },
        ),

        floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            print("Siguiente lección");
          },
          backgroundColor: const Color(0xFF58CC02), // verde tipo Duolingo

          icon: Icon(
            Icons.arrow_forward,
            color: Color.fromARGB(255, 255, 255, 255),
          ),

          label: const Text(
            "Siguiente lección",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),

        //BottomNavegationBar - Barra inferior
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home, color: Color.fromARGB(255, 228, 198, 27)),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.work, color: Color.fromARGB(255, 218, 130, 7)),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.emoji_events,
                color: Color.fromARGB(255, 117, 71, 1),
              ),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite,
                color: Color.fromARGB(255, 244, 54, 212),
              ),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.pets, color: Color.fromARGB(255, 25, 34, 165)),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.more_horiz_rounded,
                color: Color.fromARGB(255, 160, 43, 196),
              ),
              label: "",
            ),
          ],
        ),
      ),
    );
  }
}
