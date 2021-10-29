// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class CategoriesList extends StatelessWidget {
  final String title;
  CategoriesList(this.title);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(vertical: 25, horizontal: 25),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(title,
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
            Row(
              children: [
                Text('View All',
                    style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontSize: 18,
                        fontWeight: FontWeight.bold)),
                SizedBox(width: 5),
                Container(
                  padding: EdgeInsets.all(6),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Theme.of(context).primaryColor,
                  ),
                  child: Icon(Icons.arrow_forward_ios,
                      color: Colors.white, size: 15),
                )
              ],
            )
          ],
        ));
  }
}
