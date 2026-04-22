import 'package:flutter/material.dart';

class Suma extends StatefulWidget {
  const Suma({super.key});

  @override
  State<Suma> createState() => _Suma();
}

class _Suma extends State<Suma> {
  int A = 5;
  int B = 20;

  int _resultado = 0;

  void sumar() {
    setState(() {
      _resultado += A;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.network(
              'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg',
              width: 40,
              height: 40,
            ),
            Text("Pedro", style: TextStyle(fontSize: 20)),
          ],
        ),
        Image.network(
          'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg',
          height: 100,
        ),
        Column(
          children: [
            Row(
              children: [
                IconButton(onPressed: sumar, icon: Icon(Icons.add)),
                IconButton(onPressed: () {}, icon: Icon(Icons.add)),
                IconButton(onPressed: () {}, icon: Icon(Icons.add)),
              ],
            ),
          ],
        ),

        Text('$_resultado'),
      ],
    );
  }
}
