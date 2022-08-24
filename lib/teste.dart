import 'package:flutter/material.dart';

class WeekButton extends StatelessWidget {
  final String text;
  final bool? selected;
  final VoidCallback onPressed;
  const WeekButton(
    this.text, {
    Key? key,
    required this.onPressed,
    this.selected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onPressed,
        child: Image.asset(
          'assets/images/teste_google.png',
          scale: 8,
        ));
  }
}
