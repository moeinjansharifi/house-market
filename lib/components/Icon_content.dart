import 'package:flutter/material.dart';

class IconContent extends StatelessWidget {
  const IconContent({this.icon, required this.iconText});
  final IconData? icon;
  final String iconText;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Icon(
            icon,
            size: 20.0,
          ),
          Text(
            iconText,
            style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }
}

class SimpleIcon extends StatelessWidget {
  const SimpleIcon({this.icon});
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return Icon(
      icon,
      size: 30.0,
      color: Colors.blue,
    );
  }
}
