import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/Card.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_application_1/components/Icon_content.dart';
import 'package:flutter_application_1/components/Title_Content.dart';

class HouseDetails extends StatelessWidget {
  const HouseDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: null,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              margin: EdgeInsets.only(top: 70.0),
              child: ListTile(
                leading: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Padding(
                    padding: EdgeInsets.all(0),
                    child: SimpleIcon(
                      icon: FontAwesomeIcons.circleArrowLeft,
                    ),
                  ),
                ),
                title: TitleContent(title: 'Details'),
                trailing: Padding(
                  padding: EdgeInsets.all(0),
                  child: SimpleIcon(
                    icon: FontAwesomeIcons.circlePlus,
                  ),
                ),
              ),
            ),
            Container(
              height: 350,
              color: Colors.transparent,
              margin: EdgeInsets.only(top: 10),
              child: cardDetails(
                imageUrl: 'assets/image6.jpg',
              ),
            ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(10, 0, 10, 5),
                    child: Text(
                      'Deamsville House - \$ 320000 ',
                      style: TextStyle(
                          fontSize: 28.0, fontWeight: FontWeight.w600),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                    child: Text(
                      'Afghanistan Herat, Herat 29',
                      style: TextStyle(
                          fontSize: 24.0, fontWeight: FontWeight.w500),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 8.0, vertical: 3.0),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.blue),
                          child: Text(
                            'Rent',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontSize: 15.0),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 8.0, vertical: 3.0),
                          margin: EdgeInsets.only(left: 10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.black),
                          child: Text(
                            '\$300000 discount',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontSize: 15.0),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '4 Bedroom',
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF777575),
                          ),
                        ),
                        Text(
                          '1 Bathroom',
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF777575),
                          ),
                        ),
                        Text(
                          'Parking Stop',
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF777575),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 0, vertical: 10.0),
              color: Color(0xFFE9E9E9),
              child: Row(
                children: [
                  IconContent(icon: FontAwesomeIcons.home, iconText: 'Home'),
                  IconContent(icon: FontAwesomeIcons.user, iconText: 'Profile'),
                  IconContent(
                      icon: FontAwesomeIcons.message, iconText: 'Message'),
                  IconContent(icon: FontAwesomeIcons.gear, iconText: 'Setting'),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
