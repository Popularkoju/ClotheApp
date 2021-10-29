// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class SizeList extends StatefulWidget {
  @override
  _SizeListState createState() => _SizeListState();
}

class _SizeListState extends State<SizeList> {
  final List<String> sizeList = ['S', 'M', 'L', 'XL', 'XXL'];
  int currentSelected = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => GestureDetector(
                onTap: () {
                  setState(() {
                    currentSelected = index;
                  });
                },
                child: (Container(
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                    decoration: BoxDecoration(
                        color: currentSelected == index
                            ? Theme.of(context).primaryColor
                            : Colors.white,
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(
                            color: Colors.grey.withOpacity(0.5), width: 2)),
                    child: Text(
                      sizeList[index],
                      style: TextStyle(
                          color: currentSelected == index
                              ? Colors.white
                              : Colors.grey),
                    ))),
              ),
          separatorBuilder: (_, index) => SizedBox(
                width: 3,
              ),
          itemCount: sizeList.length),
    );
  }
}
