import 'package:flutter/material.dart';

class LessonNode extends StatefulWidget {
  final double width;
  final dynamic content;
  final Color color;
  final VoidCallback? onTap;

  const LessonNode({
    super.key,
    required this.width,
    required this.content,
    required this.color,
    this.onTap,
  });

  @override
  State<LessonNode> createState() => _LessonNodeState();
}

class _LessonNodeState extends State<LessonNode> {
  bool _isPressed = false;

  void _onTapDown(_) {
    setState(() => _isPressed = true);
  }

  void _onTapUp(_) {
    setState(() => _isPressed = false);
  }

  void _onTapCancel() {
    setState(() => _isPressed = false);
  }

  @override
  Widget build(BuildContext context) {
    final size = widget.width * 0.18;

    return GestureDetector(
      onTap: widget.onTap,
      onTapDown: _onTapDown,
      onTapUp: _onTapUp,
      onTapCancel: _onTapCancel,

      child: AnimatedContainer(
        duration: const Duration(milliseconds: 100),
        curve: Curves.easeOut,

        width: size,
        height: size,

        //Animación boton
        transform: Matrix4.identity()..scale(_isPressed ? 0.9 : 1.0),

        decoration: BoxDecoration(
          color: widget.color,
          shape: BoxShape.circle,

          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.2),
              blurRadius: 8,
              offset: Offset(0, 4),
            ),
          ],
        ),

        child: Center(
          child: widget.content is IconData
              ? Icon(
                  widget.content,
                  color: Colors.white,
                  size: widget.width * 0.08,
                )
              : ClipOval(
                  child: Image.asset(
                    widget.content,
                    width: widget.width * 0.10,
                    height: widget.width * 0.10,
                    fit: BoxFit.cover,
                  ),
                ),
        ),
      ),
    );
  }
}
