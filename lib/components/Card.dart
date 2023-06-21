import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PropertyCard extends StatelessWidget {
  PropertyCard({required this.imageUrl, required this.houseState});
  final String imageUrl;
  final String houseState;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          height: 260,
          margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 0.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
            image:
                DecorationImage(image: AssetImage(imageUrl), fit: BoxFit.cover),
          ),
        ),
        Container(
          child: Stack(
            children: <Widget>[
              Positioned(
                bottom: 80,
                left: 10,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 3),
                  decoration: new BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.blue,
                  ),
                  height: 30,
                  child: Center(
                    child: Text(
                      houseState,
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}

class PropertyCard1 extends StatelessWidget {
  PropertyCard1({required this.imageUrl, required this.houseState});
  final String imageUrl;
  final String houseState;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          height: 260,
          margin: EdgeInsets.fromLTRB(10, 10, 10, 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
            image:
                DecorationImage(image: AssetImage(imageUrl), fit: BoxFit.cover),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 20.0),
          child: Stack(
            children: [
              Positioned(
                bottom: 0,
                left: 10,
                child: Text(
                  houseState,
                  style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w500),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}

class cardDetails extends StatelessWidget {
  cardDetails({required this.imageUrl});
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          height: 350,
          margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 0.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
            image:
                DecorationImage(image: AssetImage(imageUrl), fit: BoxFit.cover),
          ),
        ),
      ],
    );
  }
}

class cardForRent extends StatelessWidget {
  cardForRent(
      {required this.imageUrl,
      required this.address,
      required this.name,
      required this.price,
      required this.bedroom,
      required this.bathroom});
  final String imageUrl;
  final String address;
  final String name;
  final String price;
  final String bedroom;
  final String bathroom;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            height: 200,
            margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 0.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
              image: DecorationImage(
                  image: AssetImage(imageUrl), fit: BoxFit.cover),
            ),
          ),
        ),
        Expanded(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                  child: Text(
                    address,
                    style:
                        TextStyle(fontSize: 15.0, fontWeight: FontWeight.w500),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(10, 0, 10, 5),
                  child: Text(
                    name,
                    style:
                        TextStyle(fontSize: 20.0, fontWeight: FontWeight.w600),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(10, 0, 10, 5),
                  child: Text(
                    price,
                    style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.w600,
                        color: Colors.blue),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        FontAwesomeIcons.bed,
                        size: 16,
                      ),
                      Text(
                        bedroom,
                        style: TextStyle(
                            color: Colors.black54,
                            fontWeight: FontWeight.w600,
                            fontSize: 12.0),
                      ),
                      Icon(
                        FontAwesomeIcons.bath,
                        size: 16,
                      ),
                      Text(
                        bathroom,
                        style: TextStyle(
                            color: Colors.black54,
                            fontWeight: FontWeight.w600,
                            fontSize: 12.0),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
