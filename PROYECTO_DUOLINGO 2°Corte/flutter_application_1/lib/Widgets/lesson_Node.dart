import 'package:flutter/material.dart';

class LessonNode extends StatelessWidget {

  final double width;
  final dynamic content;
  final Color color;

  const LessonNode({
    super.key,
    required this.width,
    required this.content,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width * 0.18,
      height: width * 0.18,
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
      ),
      child: Center(
        child: content is IconData
            ? Icon(
                content,
                color: Colors.white,
                size: width * 0.08,
              )
            : ClipOval(
                child: Image.asset(
                  content,
                  width: width * 0.10,
                  height: width * 0.10,
                  fit: BoxFit.cover,
                ),
              ),
      ),
    );
  }
}