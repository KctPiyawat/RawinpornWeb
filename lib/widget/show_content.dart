import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:rawinpornweb/utility/my_style.dart';

class ShowContent extends StatelessWidget {
  List<String> pathBanners = ['images/banner1.jpg','images/banner2.jpg'];
  List<Widget> widgets = [];

  ShowContent() {
    initContent();
  }

  void initContent() {
    for (var item in pathBanners) {
      widgets.add(Image.asset(item));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        buildTittle(title: 'Promotion Today !!!'),
        CarouselSlider(
          items: widgets,
          options: CarouselOptions(
            autoPlay: true,
            autoPlayInterval: Duration(seconds: 3),
          ),
        ),
      ],
    );
  }

  Text buildTittle({String title}) {
    return Text(
      title,
      style: MyStyle().h3Title(),
    );
  }
}
