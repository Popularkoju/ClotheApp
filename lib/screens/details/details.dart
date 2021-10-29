// ignore_for_file: prefer_const_constructors

import 'package:ecommerce_app/models/clothes.dart';
import 'package:ecommerce_app/screens/details/widgets/add_cart.dart';
import 'package:ecommerce_app/screens/details/widgets/clothes_info.dart';
import 'package:ecommerce_app/screens/details/widgets/detail_appbar.dart';
import 'package:ecommerce_app/screens/details/widgets/sizelist.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  final Clothes clothes;
  DetailPage(this.clothes);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        // ignore: prefer_const_literals_to_create_immutables
        crossAxisAlignment: CrossAxisAlignment.start,
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          DetailAppBar(clothes),
          ClothesInfo(clothes),
          SizeList(),
          AddCart(clothes),
        ],
      ),
    ));
  }
}
