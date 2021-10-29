// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors

import 'package:ecommerce_app/models/clothes.dart';
import 'package:ecommerce_app/screens/details/details.dart';
import 'package:flutter/material.dart';

class ClothesItem extends StatelessWidget {
  final Clothes clothe;
  ClothesItem(this.clothe);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => DetailPage(clothe)));
        },
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Stack(
                children: [
                  Container(
                    margin: EdgeInsets.all(8),
                    height: 170,
                    width: 200,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                            image: AssetImage(clothe.imageUrl),
                            fit: BoxFit.cover)),
                  ),
                  Positioned(
                      right: 20,
                      top: 15,
                      child:
                          // ignore: avoid_unnecessary_containers
                          Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.9),
                            shape: BoxShape.circle),
                        child: Icon(
                          Icons.favorite,
                          color: Colors.red,
                          size: 20,
                        ),
                      ))
                ],
              ),
              Text(
                clothe.title,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  height: 1.5,
                ),
              ),
              Text(
                clothe.subtitile,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  height: 1.3,
                ),
              ),
              Text(
                clothe.price,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    height: 1.5,
                    color: Theme.of(context).primaryColor),
              )
            ],
          ),
        ),
      ),
    );
  }
}
