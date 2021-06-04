import 'package:flutter/material.dart';
import 'package:rawinpornweb/widget/call_to_action.dart';
import 'package:rawinpornweb/widget/show_content.dart';
import 'package:responsive_builder/responsive_builder.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      desktop: buildDesktop(),
      tablet: buildMobile(),
      mobile: buildMobile(),
    );
  }

  Widget buildDesktop() => Row(
        children: [
          Container(
            width: 600,
            child: ShowContent(),
          ),
          Expanded(
            child: Container(
              child: CallToAction(),
            ),
          ),
        ],
      );
}

Widget buildMobile() => Column(
      children: [
        Container(
          width: 600,
          child: ShowContent(),
        ),
        Container(
          width: 600,
          
          child: CallToAction(),
        ),
      ],
    );
