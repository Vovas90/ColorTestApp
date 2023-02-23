import 'package:flutter/material.dart';

class ShakingText extends StatefulWidget {
  final String text;
  final TextStyle style;
  final Duration duration;

  const ShakingText({
    Key? key,
    required this.text,
    required this.style,
    this.duration = const Duration(milliseconds: 250),
  }) : super(key: key);

  @override
  _ShakingTextState createState() => _ShakingTextState();
}

class _ShakingTextState extends State<ShakingText>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(vsync: this, duration: widget.duration);
    _animation = Tween(
      begin: -10.0,
      end: 10.0,
    ).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.bounceInOut,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    _controller.forward(from: 0);

    return AnimatedBuilder(
      animation: _animation,
      builder: (context, child) {
        return Transform.translate(
          offset: Offset(_animation.value, 0),
          child: Text(
            widget.text,
            style: widget.style,
          ),
        );
      },
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
