// ignore_for_file: prefer_const_constructors

import 'package:ecommerce_app/models/clothes.dart';
import 'package:flutter/material.dart';

class AddCart extends StatelessWidget {
  final Clothes clothes;
  AddCart(this.clothes);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 25),
      child: Padding(
        padding: const EdgeInsets.only(bottom: 20),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Text(
                  'Price',
                  style: TextStyle(color: Colors.grey, fontSize: 12),
                ),
                Text(
                  clothes.price,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                )
              ],
            ),
            SizedBox(
              width: 20,
            ),
            Expanded(
              child: Container(
                height: 45,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)),
                      elevation: 0,
                      primary: Theme.of(context).primaryColor),
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Add to Cart',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold)),
                      SizedBox(
                        width: 5,
                      ),
                      Icon(Icons.shopping_cart_outlined)
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
