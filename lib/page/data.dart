import 'package:flutter/material.dart';

import 'package:navigation_drawer_example/page/places.dart';

import 'horizontal_place_item.dart';
import 'hp1.dart';
import 'people_page.dart';

class Aj extends StatefulWidget {
  @override
  _AjState createState() => _AjState();
}

class _AjState extends State<Aj> {
  Widget _imagecontainer() {
    return InkWell(
      onTap: () {
        // Navigator.pop(context);
      },
      child: Container(
        width: 350.0,
        height: 150.0,
        decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(
                  'https://i.pinimg.com/originals/47/85/10/4785108f82735264283547850415738a.jpg')),
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
          color: Colors.redAccent,
        ),
      ),
    );
  }

  Widget _text1() {
    return InkWell(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => PeoplePage()));
        },
        child: Container(
          margin: EdgeInsets.all(10),
          padding: EdgeInsets.all(10),
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: Colors.blueAccent,
              border: Border.all(
                  color: Colors.blueAccent, // Set border color
                  width: 3.0), // Set border width
              borderRadius: BorderRadius.all(
                  Radius.circular(10.0)), // Set rounded corner radius
              boxShadow: [
                BoxShadow(
                    blurRadius: 10, color: Colors.black, offset: Offset(1, 3))
              ] // Make rounded corner of border
              ),
          child: Text(
            "Instant service order",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        ));
  }

  Widget _text2() {
    return InkWell(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => PeoplePage()));
        },
        child: Container(
          margin: EdgeInsets.all(10),
          padding: EdgeInsets.all(10),
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: Colors.blueAccent,
              border: Border.all(
                  color: Colors.blueAccent, // Set border color
                  width: 3.0), // Set border width
              borderRadius: BorderRadius.all(
                  Radius.circular(10.0)), // Set rounded corner radius
              boxShadow: [
                BoxShadow(
                    blurRadius: 10, color: Colors.black, offset: Offset(1, 3))
              ] // Make rounded corner of border
              ),
          child: Text(
            "Need Transport",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        ));
  }

  Widget _title() {
    return Container(
      alignment: Alignment.topLeft,
      child: Text(
        "industrial plants",
        style: TextStyle(fontSize: 30),
      ),
    );
  }

  Widget _title1() {
    return Container(
      alignment: Alignment.topLeft,
      child: Text(
        "industrial and Engineering Product",
        style: TextStyle(fontSize: 30),
      ),
    );
  }

  Widget buildHorizontalList() {
    return Container(
      padding: EdgeInsets.only(top: 0.0, left: 20.0),
      height: 280.0,
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        primary: false,
        itemCount: 3,
        itemBuilder: (BuildContext context, int index) {
          Map place = places.reversed.toList()[index];
          return HorizontalPlaceItem(place: place);
        },
      ),
    );
  }

  _buildHorizontalList1() {
    return Container(
      padding: EdgeInsets.only(top: 0.0, left: 20.0),
      height: 280.0,
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        primary: false,
        itemCount: 3,
        itemBuilder: (BuildContext context, int index) {
          Map product = places.reversed.toList()[index];
          return HorizontalPlaceItem1(product: product);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        height: height,
        child: Stack(
          children: <Widget>[
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(height: 10),
                    _imagecontainer(),
                    SizedBox(height: 20),
                    _text1(),
                    _text2(),
                    _title(),
                    SizedBox(height: 5),
                    buildHorizontalList(),
                    SizedBox(
                      height: 5,
                    ),
                    _title1(),
                    _buildHorizontalList1(),
                    SizedBox(height: height * .0),
                  ],
                ),
              ),
            ),
            // Positioned(top: 40, left: 0, child: _backButton()),
          ],
        ),
      ),
    );
  }
}
