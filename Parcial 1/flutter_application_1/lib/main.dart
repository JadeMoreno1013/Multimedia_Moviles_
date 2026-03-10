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
          leading: IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
          title: const Text('Parcial Moviles :)'),
          actions: <Widget>[
            IconButton(onPressed: () {}, icon: Icon(Icons.notification_add)),
          ],
        ),
        body: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            Text(
              "Explore Categories",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,

              children: [
                Icon(Icons.call, color: Colors.black, size: 30),
                SizedBox(width: 20),
                Icon(Icons.home, color: Colors.black, size: 30),
                SizedBox(width: 20),
                Icon(Icons.search, color: Colors.black, size: 30),
                SizedBox(width: 20),
                Icon(Icons.settings, color: Colors.black, size: 30),
                SizedBox(width: 20),
                Icon(Icons.settings, color: Colors.black, size: 30),
              ],
            ),
            SizedBox(height: 10),

            Image(
              image: NetworkImage(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTklcZv67n9eTXQZ4AOm5fHj5Iw8tfZtwKLWw&s',
              ),
            ),
            SizedBox(height: 10),

            Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent cursus vehicula massa at bibendum. Sed faucibus ultricies velit, eu consequat ligula facilisis id.",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontSize: 12,
              ),
              textAlign: TextAlign.center,
            ),

            CustomCard(title: "hello", subtitle: "you", icon: Icons.person),
            CustomCard(title: "hello", subtitle: "you", icon: Icons.person),
            CustomCard(title: "hello", subtitle: "you", icon: Icons.person),
          ],
        ),

        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
              icon: Icon(Icons.calendar_month),
              label: 'Calendar',
            ),
            BottomNavigationBarItem(icon: Icon(Icons.call_end), label: 'Call'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Perfil'),
          ],
        ),
      ),
    );
  }
}
