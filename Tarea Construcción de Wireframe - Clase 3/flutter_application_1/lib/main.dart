import 'package:flutter/material.dart';
import './widgets/CustomCard.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('AppBar Demo'),
          actions: <Widget>[
            IconButton(onPressed: () {}, icon: Icon(Icons.camera_alt_rounded)),
            IconButton(onPressed: () {}, icon: Icon(Icons.search)),
            IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
          ],
        ),
        body: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            Center(
              child: Text(
                "Explore Categories",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 30),
            Text(
              "Mi Título 1",
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),

            CategoryCard(
              imageUrl:
                  "https://tigers-world.com/wp-content/uploads/Bengala.jpg",
              title: "Lorem ipsum",
              subtitle:
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.  ",
            ),
            SizedBox(height: 20),

            Text(
              "Mi Título 2",
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),
            CustomCard(
              title: "hello",
              subtitle: "you",
              icon: Icons.abc_outlined,
            ),
            CustomCard(
              title: "hello",
              subtitle: "you",
              icon: Icons.abc_outlined,
            ),
            CustomCard(
              title: "hello",
              subtitle: "you",
              icon: Icons.abc_outlined,
            ),
          ],
        ),

        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
              icon: Icon(Icons.add_shopping_cart),
              label: 'Shopping',
            ),
            BottomNavigationBarItem(icon: Icon(Icons.call_end), label: 'Call'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Perfil'),
          ],
        ),
      ),
    );
  }
}
