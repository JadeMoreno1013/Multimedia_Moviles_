import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    const String appTitle = 'Flutter layout demo';
    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(title: const Text(appTitle)),

        body: const Center(
          child: Column(

            
            children: [
             Image(
                image: NetworkImage(
                  'https://tigers-world.com/wp-content/uploads/Bengala.jpg',
                ),
              ), 

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Tigre de Bengala",

                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 25,
                    ),
                  ),
                  SizedBox(width: 20),
                  Icon(Icons.star, color: Colors.red, size: 30),

                ],
              ),

              

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.call, color: Colors.green, size: 30),
                  Icon(Icons.route, color: Colors.green, size: 30),
                  Icon(Icons.share, color: Colors.green, size: 30),
                ],
              ),

              Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent cursus vehicula massa at bibendum. Sed faucibus ultricies velit, eu consequat ligula facilisis id. Cras lacinia elementum ante, quis imperdiet leo accumsan eu. In feugiat urna eget massa ornare, at consectetur lacus luctus. Suspendisse erat magna, tincidunt vel tincidunt eu, aliquam ac ex. Curabitur et fringilla elit. Pellentesque id justo quis nisl posuere mattis placerat vel mauris. Cras sed sodales metus.",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 12,
                ),
                textAlign: TextAlign.center,
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}

