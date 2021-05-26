import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:rawinpornweb/utility/my_assets.dart';
import 'package:rawinpornweb/utility/my_style.dart';

class ShowContent extends StatelessWidget {
  List<String> pathBanners = [
    'images/banner1.jpg',
    'images/banner2.jpg',
    'images/banner1.jpg'
  ];

  List<String> titleCats = [
    'Cat1',
    'Cat2',
    'Cat3',
    'Cat4',
  ];
  List<String> pathCats = [
    MyAssets.cat1,
    MyAssets.cat2,
    MyAssets.cat3,
    MyAssets.cat4,
  ];

  List<Widget> widgets = [];

  Widget createWidget(String pathImage, String title) {
    return Card(
          child: Column(
        children: [
          Container(
            width: 100,
            height: 100,
            child: Image.asset(pathImage),
          ),
          Text('title'),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    if (widgets.length != 0) {
      widgets.clear();
    }

    int index = 0;
    for (var item in titleCats) {
      widgets.add(createWidget(pathCats[index], item));
      index++;
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        buildTittle(title: 'Promotion Today !!!'),
        buildCarouselSlider(),
        buildTittle(title: 'Catigory !!!'),
        buildShowCat(),
      ],
    );
  }

  Widget buildShowCat() => GridView.extent(
        physics: ScrollPhysics(),
        shrinkWrap: true,
        maxCrossAxisExtent: 160,
        children: widgets,
      );

  Widget buildCarouselSlider() {
    return CarouselSlider(
      items: pathBanners.map((e) => Image.asset(e)).toList(),
      options: CarouselOptions(autoPlay: true),
    );
  }

  Text buildTittle({String title}) {
    return Text(
      title,
      style: MyStyle().h3Title(),
    );
  }
}
