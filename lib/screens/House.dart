import 'package:flutter/material.dart';
import 'package:House_Market/components/Card.dart';
import 'package:House_Market/components/Title_Content.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:House_Market/components/Icon_content.dart';
import 'package:House_Market/screens/HouseDetails.dart';
import 'package:House_Market/screens/HouseForRent.dart';
import 'package:House_Market/screens/HouseForSale.dart';
// import 'package:House_Market/screens/AddHome.dart';

class House extends StatelessWidget {
  const House({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFFE9E9E9),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TitleContent(title: 'HOUSE MARKET'),
              GestureDetector(
                onTap: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //     builder: (context) => AddHome(),
                  //   ),
                  // );
                },
                child: SimpleIcon(
                  icon: FontAwesomeIcons.circlePlus,
                ),
              )
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.only(top: 30.0),
                child: Padding(
                  padding: const EdgeInsets.only(left: 8, right: 8, bottom: 10),
                  child: TextFormField(
                    decoration: InputDecoration(
                      prefixIcon: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          FontAwesomeIcons.search,
                          size: 20,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(80),
                        borderSide: const BorderSide(
                            color: Colors.transparent, width: 0.0),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(80),
                        borderSide: const BorderSide(
                            color: Colors.transparent, width: 0.0),
                      ),
                      hintStyle:
                          TextStyle(fontSize: 18, fontStyle: FontStyle.italic),
                      filled: true,
                      fillColor: Color(0xFFF1EFEF),
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 17, vertical: 12),
                      hintText: 'Search for some house',
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 18,
              ),
              Container(
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: ((context) => HouseDetails()),
                      ),
                    );
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 10.0),
                        child: Text(
                          'Recommanded',
                          style: TextStyle(
                              fontSize: 16.0, fontWeight: FontWeight.w600),
                        ),
                      ),
                      Container(
                        height: 260,
                        color: Colors.transparent,
                        margin: EdgeInsets.only(top: 10),
                        child: PropertyCard(
                          imageUrl: 'assets/image2.jpg',
                          houseState: 'Rent/454',
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 27,
              ),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 10.0),
                      child: Text(
                        'Categories',
                        style: TextStyle(
                            fontSize: 16.0, fontWeight: FontWeight.w600),
                      ),
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => HouseForSale(),
                                ),
                              );
                            },
                            child: Column(
                              children: [
                                Container(
                                  height: 260,
                                  color: Colors.transparent,
                                  child: PropertyCard1(
                                    imageUrl: 'assets/image7.jpg',
                                    houseState: 'House for Sale',
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => HouseForRent(),
                                ),
                              );
                            },
                            child: Column(
                              children: [
                                Container(
                                  height: 260,
                                  color: Colors.transparent,
                                  child: PropertyCard1(
                                    imageUrl: 'assets/image8.jpg',
                                    houseState: 'House for Rent',
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 27,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 0, vertical: 10.0),
                color: Color(0xFFE9E9E9),
                child: Row(
                  children: [
                    IconContent(
                      icon: FontAwesomeIcons.home,
                      iconText: 'Home',
                    ),
                    IconContent(
                        icon: FontAwesomeIcons.user, iconText: 'Profile'),
                    IconContent(
                        icon: FontAwesomeIcons.message, iconText: 'Message'),
                    IconContent(
                        icon: FontAwesomeIcons.gear, iconText: 'Setting'),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
