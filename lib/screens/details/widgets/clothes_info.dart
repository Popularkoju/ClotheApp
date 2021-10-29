import 'package:ecommerce_app/models/clothes.dart';
import 'package:flutter/material.dart';

class ClothesInfo extends StatelessWidget {
  final Clothes clothesData;
  ClothesInfo(this.clothesData);

  @override
  Widget build(BuildContext context) {
    var textSpan = TextSpan();
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Text('${clothesData.title} ${clothesData.subtitile}',
                // ignore: prefer_const_constructors
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
            // ignore: prefer_const_constructors
            Icon(
              Icons.favorite,
              size: 18,
              color: Colors.red,
            )
          ]),
          Row(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              // ignore: prefer_const_constructors
              Icon(Icons.star_border_outlined, color: Colors.amber),
              // ignore: prefer_const_constructors
              Text(
                '4.8,(5.2k)',
                // ignore: prefer_const_constructors
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                ),
              )
            ],
          ),
          // ignore: prefer_const_constructors
          RichText(
              // ignore: prefer_const_constructors
              text: TextSpan(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                // ignore: prefer_const_constructors
                TextSpan(
                  text:
                      'This the oversized hoodie\n comfortable and warm.\n made with silk fabric\nmodel according to today',
                  style: TextStyle(color: Colors.grey, height: 1.5),
                ),
                // ignore: prefer_const_constructors
                TextSpan(
                    text: 'Read More',
                    // ignore: prefer_const_constructors
                    style: TextStyle(
                      color: Colors.amber,
                    ))
              ])),
        ]));
  }
}
