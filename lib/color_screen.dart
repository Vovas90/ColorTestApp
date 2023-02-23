import 'package:flutter/material.dart';
import 'package:test_color_app/utils.dart';
import 'package:test_color_app/widgets/reveal_text.dart';
import 'package:test_color_app/widgets/shaking_text.dart';

class ColorScreen extends StatefulWidget {
  const ColorScreen({Key? key}) : super(key: key);

  @override
  State<ColorScreen> createState() => _ColorScreenState();
}

class _ColorScreenState extends State<ColorScreen> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => setState(() {}),
      child: Container(
        color: Utils.generateRandomColor(),
        child: Center(
          child: RevealText(
            // child: ShakingText( // <- One more variant
            text: Utils.getRandomString(),
            style: TextStyle(
              color: Utils.generateRandomColor(),
              fontSize: 40,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
