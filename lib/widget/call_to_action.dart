import 'package:flutter/material.dart';
import 'package:rawinpornweb/utility/my_style.dart';

class CallToAction extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(
        FocusNode(),
      ),
      behavior: HitTestBehavior.opaque,
      child: Column(
        children: [
          buildTitle(),
          buildUser(),
          buildPassword(),
        ],
      ),
    );
  }

  Container buildUser() {
    return Container(
      margin: EdgeInsets.only(top: 16),
      width: 250,
      child: TextFormField(
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.perm_identity,color: MyStyle().blue,),
          labelText: 'User :',
          labelStyle: MyStyle().h3TitleNormal(),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: MyStyle().blue),
            borderRadius: BorderRadius.circular(20),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: MyStyle().sky),
            borderRadius: BorderRadius.circular(20),
          ),
        ),
      ),
    );
  }

  Container buildPassword() {
    return Container(
      margin: EdgeInsets.only(top: 16),
      width: 250,
      child: TextFormField(
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.lock_outline,color: MyStyle().blue,),
          labelText: 'Password :',
          labelStyle: MyStyle().h3TitleNormal(),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: MyStyle().blue),
            borderRadius: BorderRadius.circular(20),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: MyStyle().sky),
            borderRadius: BorderRadius.circular(20),
          ),
        ),
      ),
    );
  }

  Widget buildTitle() {
    return Container(
      margin: EdgeInsets.only(top: 120),
      child: Text(
        'Member Zone',
        style: MyStyle().h3Title(),
      ),
    );
  }
}
