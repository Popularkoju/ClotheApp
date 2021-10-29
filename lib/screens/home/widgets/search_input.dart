// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class SearchInput extends StatelessWidget {
  final tagsList = ['Shirt', 'Pants', 'T-shirt', 'Kurtha'];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 25, right: 25, left: 25),
      child: Column(
        children: [
          Row(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              Flexible(
                child: TextField(
                  cursorColor: Colors.grey,
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none,
                    ),
                    hintText: "Search Asthetic Shirt",
                    hintStyle: TextStyle(
                      fontSize: 12,
                    ),
                    prefixIcon: Container(
                      padding: EdgeInsets.all(10),
                      child: Icon(Icons.search_rounded),
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 10),
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Icon(Icons.filter_1_rounded),
              )
            ],
          ),
          Row(
            children: tagsList
                .map((e) => SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Container(
                        padding: EdgeInsets.all(10),
                        margin: EdgeInsets.only(top: 10, right: 10),
                        decoration: BoxDecoration(
                            color: Theme.of(context).accentColor,
                            borderRadius: BorderRadius.circular(10)),
                        child: Text(e, style: TextStyle(color: Colors.grey)),
                      ),
                    ))
                .toList(),
          ),
        ],
      ),
    );
  }
}
