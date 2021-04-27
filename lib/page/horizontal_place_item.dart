import 'package:flutter/material.dart';

class HorizontalPlaceItem extends StatelessWidget {
  final Map place;

  HorizontalPlaceItem({required this.place});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20.0),
      child: InkWell(
        child: Container(
          color: Colors.white70,
          child: Container(
            height: 400.0,
            width: 120.0,
            child: Column(
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.network(
                    "${place["img"]}",
                    height: 158.0,
                    width: 140.0,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(height: 7.0),
                Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "${place["name"]}",
                    overflow: TextOverflow.clip,
                    softWrap: false,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15.0,
                    ),
                    maxLines: 1,
                    textAlign: TextAlign.left,
                  ),
                ),
                SizedBox(height: 3.0),
                Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "${place["price"]}",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 13.0,
                      color: Colors.blueGrey[300],
                    ),
                    maxLines: 1,
                    textAlign: TextAlign.left,
                  ),
                ),
                Container(
                    height: 30,
                    child: OutlinedButton(
                      onPressed: null,
                      style: ButtonStyle(
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0))),
                      ),
                      child: const Text("Add To Cart"),
                    )),
              ],
            ),
          ),
        ),
        // onTap: () {
        //   Navigator.of(context).push(
        //     MaterialPageRoute(
        //       builder: (BuildContext context) {
        //         return Details();
        //       },
        //     ),
        //   );
        // },
      ),
    );
  }
}
