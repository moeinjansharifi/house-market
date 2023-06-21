import 'package:flutter/material.dart';

class TitleContent extends StatelessWidget {
  const TitleContent({required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      textAlign: TextAlign.center,
      style: TextStyle(
          fontSize: 30.0, fontWeight: FontWeight.bold, color: Colors.blue),
    );
  }
}
