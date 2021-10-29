import 'package:ecommerce_app/models/clothes.dart';
import 'package:ecommerce_app/screens/home/widgets/clothes_item.dart';
import 'package:flutter/material.dart';

import 'category_list.dart';

class NewArrival extends StatelessWidget {
  final clothesList = Clothes.generateClothes();
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [
        CategoriesList('New Arrival'),
        Container(
          height: 280,
          child: ListView.separated(
              padding: EdgeInsets.symmetric(horizontal: 25),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => ClothesItem(clothesList[index]),
              separatorBuilder: (_, index) => SizedBox(width: 8),
              itemCount: clothesList.length),
        )
      ],
    ));
  }
}
