// ignore_for_file: prefer_const_constructors
import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerce_app/models/clothes.dart';
import 'package:ecommerce_app/screens/details/widgets/color_picker.dart';
import 'package:flutter/material.dart';

class DetailAppBar extends StatefulWidget {
  final Clothes clothes;
  DetailAppBar(this.clothes);

  @override
  _DetailAppBarState createState() => _DetailAppBarState();
}

class _DetailAppBarState extends State<DetailAppBar> {
  final List<Color> colors = [
    Color(0xffe6cfc6),
    Color(0xffeedfb5),
    Color(0xffcae2c5),
    Color(0xffbae6ee),
  ];
  final CarouselController _controller = CarouselController();
  int _currentPage = 0;
  int _currentColor = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
        child: Stack(
          children: [
            Container(
              padding: EdgeInsets.only(top: 30, left: 8, right: 8),
              child: CarouselSlider(
                carouselController: _controller,
                options: CarouselOptions(
                    height: 400,
                    viewportFraction: 1,
                    onPageChanged: (index, reason) {
                      setState(() {
                        _currentPage = index;
                      });
                    }),
                items: widget.clothes.detailsUrl
                    .map((e) => Builder(
                          builder: (context) => Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(
                                    image: AssetImage('$e'),
                                    fit: BoxFit.cover)),
                          ),
                        ))
                    .toList(),
              ),
            ),
            Positioned(
                bottom: 30,
                left: 180,
                child: Row(
                  children: widget.clothes.detailsUrl
                      .asMap()
                      .entries
                      .map(
                        (e) => GestureDetector(
                          onTap: () {
                            _controller.animateToPage(e.key);
                          },
                          child: Container(
                              margin: EdgeInsets.symmetric(horizontal: 4),
                              width: 12,
                              height: 12,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white.withOpacity(
                                    _currentPage == e.key ? 0.9 : 0.4),
                              )),
                        ),
                      )
                      .toList(),
                )),
            Positioned(
                bottom: 30,
                right: 30,
                child: Container(
                  height: 175,
                  width: 50,
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.3),
                      borderRadius: BorderRadius.circular(30)),
                  child: ListView.separated(
                      padding: EdgeInsets.zero,
                      itemBuilder: (context, index) => GestureDetector(
                          onTap: () {
                            setState(() {
                              _currentColor = index;
                            });
                          },
                          child: ColorPicker(
                              _currentColor == index, colors[index])),
                      separatorBuilder: (_, index) => SizedBox(
                            height: 3,
                          ),
                      itemCount: colors.length),
                )),
            Container(
              padding: EdgeInsets.only(top: 45, left: 25, right: 25),
              child: (Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            color: Colors.amber.withOpacity(0.9),
                            shape: BoxShape.circle),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 9),
                          child: Icon(
                            Icons.arrow_back_ios,
                            color: Colors.lightBlueAccent,
                            size: 20,
                          ),
                        )),
                  ),
                  Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        color: Colors.amber.withOpacity(0.9),
                        shape: BoxShape.circle),
                    child: Icon(Icons.more_horiz,
                        size: 20, color: Colors.lightBlueAccent),
                  )
                ],
              )),
            )
          ],
        ));
  }
}
