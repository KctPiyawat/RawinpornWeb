import 'package:flutter/material.dart';
import 'package:rawinpornweb/utility/my_style.dart';

class ShowAppName extends StatelessWidget {
  final TextStyle textStyle;

  ShowAppName({@required this.textStyle});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Rawinporn Bakermart',
          style: textStyle, 
        ),
        Text('ครบทุกอย่าง จบที่ร้านรวินท์พร'),
      ],
    );
  }
}
