import 'package:flutter/material.dart';
import 'package:rawinpornweb/utility/my_style.dart';

class CallToAction extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(onTap: () => FocusScope.of(context).requestFocus(FocusNode(),),
      behavior: HitTestBehavior.opaque,
      child: Column(
        children: [
          buildTitle(),
          Container(
            margin: EdgeInsets.only(top: 16),
            width: 250,
            child: TextFormField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.perm_identity),
                labelText: 'User :',
                border: OutlineInputBorder(),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Text buildTitle() {
    return Text(
      'Member Zone',
      style: MyStyle().h3Title(),
    );
  }
}
