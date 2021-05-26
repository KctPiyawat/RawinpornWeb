import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:rawinpornweb/pages/home_page.dart';
import 'package:rawinpornweb/utility/my_assets.dart';
import 'package:rawinpornweb/utility/my_style.dart';
import 'package:rawinpornweb/widget/show_app_name.dart';
import 'package:rawinpornweb/widget/show_logo.dart';
import 'package:responsive_builder/responsive_builder.dart';

class MainState extends StatefulWidget {
  @override
  _MainStateState createState() => _MainStateState();
}

class _MainStateState extends State<MainState> {
  Widget current = HomePage();
  List<String> menus = ['Home', 'About Me', 'Product', 'Content'];
  String choosedMenu = 'Home';
  Widget buildMainNavigator() {
    return ScreenTypeLayout(
      desktop: buildNavigatorDesktop(),
      tablet: buildNavigatorMobile(),
      mobile: buildNavigatorMobile(),
    );
  }

  Container buildNavigatorDesktop() {
    return Container(
      height: 120,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ShowLogo(),
              ),
              ShowAppName(
                textStyle: MyStyle().h1Title(),
              ),
            ],
          ),
          Container(
            width: 400,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Home',
                    style: MyStyle().h3Link(),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'About Me',
                    style: MyStyle().h3Link(),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Product',
                    style: MyStyle().h3Link(),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Content',
                    style: MyStyle().h3Link(),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Container buildNavigatorMobile() {
    return Container(
      height: 120,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ShowLogo(),
              ),
              ShowAppName(
                textStyle: MyStyle().h2Title(),
              ),
            ],
          ),
          DropdownButton<String>(
            items: menus
                .map(
                  (e) => DropdownMenuItem(
                    child: Text(
                      e,
                      style: MyStyle().h3Link(),
                    ),
                    value: e,
                  ),
                )
                .toList(),
            // hint: Text('Menu'),
            value: choosedMenu,
            onChanged: (value) {
              setState(() {
                choosedMenu = value;
              });
            },
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(MyAssets.wallpaper),
            fit: BoxFit.cover,
          ),
        ),
        alignment: Alignment.topCenter,
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
        child: ConstrainedBox(
          constraints: BoxConstraints(maxWidth: 1200),
          child: Container(
            child: ListView(
              children: [
                buildMainNavigator(),
                current,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
