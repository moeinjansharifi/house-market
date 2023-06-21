import 'package:flutter/material.dart';
import 'package:House_Market/components/Button_Content.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:House_Market/components/Icon_content.dart';

class AddHome extends StatelessWidget {
  const AddHome({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: null,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.symmetric(vertical: 80),
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(10, 0, 70, 0),
                        child: SimpleIcon(
                          icon: FontAwesomeIcons.circleArrowLeft,
                        ),
                      ),
                    ),
                    Text(
                      'Add House',
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 28.0,
                          color: Colors.blue),
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  Input(
                    labelText: 'Sell/Rent',
                    hintText: 'House for Sell or Rent',
                  ),
                ],
              ),
              Row(
                children: [
                  Input(
                    labelText: 'Name',
                    hintText: 'Enter your house name',
                  ),
                ],
              ),
              Row(
                children: [
                  Input(
                    labelText: 'Address',
                    hintText: 'Enter your house address',
                  ),
                ],
              ),
              Row(
                children: [
                  NumberInput(
                    labelText: 'Regular Price',
                  ),
                ],
              ),
              Row(
                children: [
                  NumberInput(labelText: 'Bedroom'),
                  NumberInput(labelText: 'Bedroom'),
                ],
              ),
              ButtomContent(text: 'Add House'),
            ],
          ),
        ),
      ),
    );
  }
}

class Input extends StatelessWidget {
  Input({@required this.labelText, @required this.hintText});
  final labelText;
  final String? hintText;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15, bottom: 5),
            child: Text(
              labelText,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8, right: 8, bottom: 30),
            child: TextFormField(
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(80),
                  borderSide:
                      const BorderSide(color: Colors.transparent, width: 0.0),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(80),
                  borderSide:
                      const BorderSide(color: Colors.transparent, width: 0.0),
                ),
                hintStyle: TextStyle(fontSize: 12, fontStyle: FontStyle.italic),
                filled: true,
                fillColor: Color(0xFFF1EFEF),
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 17, vertical: 12),
                hintText: hintText,
              ),
            ),
          )
        ],
      ),
    );
  }
}

class NumberInput extends StatelessWidget {
  NumberInput({@required this.labelText});
  final labelText;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15, bottom: 5),
            child: Text(
              labelText,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8, right: 8, bottom: 30),
            child: TextFormField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(80),
                  borderSide:
                      const BorderSide(color: Colors.transparent, width: 0.0),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(80),
                  borderSide:
                      const BorderSide(color: Colors.transparent, width: 0.0),
                ),
                hintStyle: TextStyle(fontSize: 12, fontStyle: FontStyle.italic),
                filled: true,
                fillColor: Color(0xFFF1EFEF),
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 17, vertical: 12),
              ),
            ),
          )
        ],
      ),
    );
  }
}
