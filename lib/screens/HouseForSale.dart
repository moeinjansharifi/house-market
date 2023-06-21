import 'package:flutter/material.dart';
import 'package:House_Market/components/Card.dart';
import 'package:House_Market/components/Title_Content.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:House_Market/components/Icon_content.dart';

class HouseForSale extends StatelessWidget {
  const HouseForSale({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFFE9E9E9),
          title: Row(
            children: [
              GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: SimpleIcon(icon: FontAwesomeIcons.circleArrowLeft)),
              SizedBox(
                width: 50,
              ),
              TitleContent(title: 'House For Sell')
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 18,
              ),
              Container(
                // margin: EdgeInsets.only(top: 60),
                child: cardForRent(
                  imageUrl: 'assets/image8.jpg',
                  address: 'Afghanistan Herat, Herat 29',
                  name: 'Dearmsilve House',
                  price: '\$320,000',
                  bedroom: '4 Bedroom',
                  bathroom: '1 Bathroom',
                ),
              ),
              SizedBox(
                height: 18,
              ),
              Container(
                // margin: EdgeInsets.only(top: 60),
                child: cardForRent(
                  imageUrl: 'assets/image9.jpg',
                  address: 'Afghanistan Herat, Herat 29',
                  name: 'Dearmsilve House',
                  price: '\$320,000',
                  bedroom: '4 Bedroom',
                  bathroom: '1 Bathroom',
                ),
              ),
              SizedBox(
                height: 18,
              ),
              Container(
                child: cardForRent(
                  imageUrl: 'assets/image1.jpg',
                  address: 'Afghanistan Herat, Herat 29',
                  name: 'Dearmsilve House',
                  price: '\$320,000',
                  bedroom: '4 Bedroom',
                  bathroom: '1 Bathroom',
                ),
              ),
              SizedBox(
                height: 18,
              ),
              Container(
                child: cardForRent(
                  imageUrl: 'assets/image7.jpg',
                  address: 'Afghanistan Herat, Herat 29',
                  name: 'Dearmsilve House',
                  price: '\$320,000',
                  bedroom: '4 Bedroom',
                  bathroom: '1 Bathroom',
                ),
              ),
              SizedBox(
                height: 18,
              ),
              Container(
                child: cardForRent(
                  imageUrl: 'assets/image2.jpg',
                  address: 'Afghanistan Herat, Herat 29',
                  name: 'Dearmsilve House',
                  price: '\$320,000',
                  bedroom: '4 Bedroom',
                  bathroom: '1 Bathroom',
                ),
              ),
              SizedBox(
                height: 18,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
