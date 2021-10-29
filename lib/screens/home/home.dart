// ignore_for_file: prefer_const_constructors

import 'package:ecommerce_app/screens/home/widgets/best_sell.dart';
import 'package:ecommerce_app/screens/home/widgets/customappbartop.dart';
import 'package:ecommerce_app/screens/home/widgets/new_arrival.dart';
import 'package:ecommerce_app/screens/home/widgets/search_input.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final bottomList = ['home', 'menu', 'heart', 'user'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            CustomAppBar(),
            SearchInput(),
            NewArrival(),
            BestSells(),
          ]),
        ),
        bottomNavigationBar: BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          type: BottomNavigationBarType.fixed,
          items: bottomList
              .map((e) => BottomNavigationBarItem(
                  label: e,
                  icon: Image.asset(
                    'assets/icons/$e.png',
                    width: 25,
                  )))
              .toList(),
        ));
  }
}
