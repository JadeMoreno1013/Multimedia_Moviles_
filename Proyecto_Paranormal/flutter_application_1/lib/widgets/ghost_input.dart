import 'package:flutter/material.dart';

class GhostInput extends StatelessWidget {

  final String label;
  final bool obscure;

  const GhostInput({
    super.key,
    required this.label,
    this.obscure = false,
  });

  @override
  Widget build(BuildContext context) {

    return Column(

      crossAxisAlignment: CrossAxisAlignment.start,

      children: [

        Text(
          label,

          style: TextStyle(
            fontSize: 14,
            color: Colors.grey.shade700,
          ),
        ),

        const SizedBox(height: 10),

        Container(

          height: 52,

          decoration: BoxDecoration(

            color: label == 'Usuario:'
                ? const Color(0xFFF6A3A3)
                : const Color(0xFFD9D9D9),

            borderRadius: BorderRadius.circular(30),
          ),

          child: TextField(

            obscureText: obscure,

            decoration: const InputDecoration(

              border: InputBorder.none,

              contentPadding: EdgeInsets.symmetric(
                horizontal: 20,
              ),
            ),
          ),
        ),
      ],
    );
  }
}