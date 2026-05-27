import 'package:flutter/material.dart';

class ExpertCard extends StatelessWidget {

  final String name;
  final String description;
  final String image;

  const ExpertCard({
    super.key,
    required this.name,
    required this.description,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {

    return Container(

      margin: const EdgeInsets.only(bottom: 20),

      child: Row(

        crossAxisAlignment: CrossAxisAlignment.start,

        children: [

          CircleAvatar(
            radius: 32,
            backgroundImage: NetworkImage(image),
          ),

          const SizedBox(width: 15),

          Expanded(

            child: Column(

              crossAxisAlignment: CrossAxisAlignment.start,

              children: [

                Text(
                  name,

                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),

                const SizedBox(height: 5),

                Text(
                  description,

                  style: TextStyle(
                    fontSize: 11,
                    height: 1.5,
                    color: const Color.fromARGB(255, 31, 30, 30),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}