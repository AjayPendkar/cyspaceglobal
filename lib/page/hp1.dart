import 'package:flutter/material.dart';

class HorizontalPlaceItem1 extends StatelessWidget {
  final Map product;

  HorizontalPlaceItem1({required this.product});

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
                    "${product["img"]}",
                    height: 158.0,
                    width: 140.0,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(height: 7.0),
                Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "${product["name"]}",
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
                    "${product["price"]}",
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
