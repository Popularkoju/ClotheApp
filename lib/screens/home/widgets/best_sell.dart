// ignore_for_file: prefer_const_constructors

import 'package:ecommerce_app/screens/home/widgets/category_list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BestSells extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CategoriesList('Best Of Sell'),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: Stack(
                children: [
                  Row(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      // ignore: prefer_const_constructors
                      ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Image.asset(
                            'assets/images/tshirt_1.jpg',
                            width: 100,
                            height: 150,
                          )),
                      SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          Text(
                            'Miniso Woman Oversize',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, height: 1.5),
                          ),
                          Text('T-Shirt',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, height: 1.3)),
                          Text('Rs.999.03',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  height: 1.5,
                                  color: Theme.of(context).primaryColor))
                        ],
                      )
                    ],
                    // ignore: prefer_const_constructors
                  ),
                  // ignore: prefer_const_constructors
                  Positioned(
                      right: 0,
                      top: 0,
                      child:
                          // ignore: prefer_const_constructors
                          Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.9),
                            shape: BoxShape.circle),
                        child: Icon(
                          Icons.favorite,
                          color: Colors.red,
                          size: 15,
                        ),
                      ))
                ],
              ),
            )
          ],
        ));
  }
}
