import 'package:flutter/material.dart';
// import 'package:flutter_application_1/screens/House.dart';

class ButtomContent extends StatelessWidget {
  const ButtomContent({
    required this.text,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30), color: Colors.blue),
        width: 250,
        padding: EdgeInsets.symmetric(vertical: 14, horizontal: 10),
        child: GestureDetector(
          onTap: () {
            // Navigator.push(
            //   context,
            //   MaterialPageRoute(builder: (context) => House()),
            // );
          },
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.w600),
          ),
        ),
      ),
    );
  }
}
