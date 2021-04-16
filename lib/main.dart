import 'package:flutter/material.dart';
import 'package:rawinpornweb/state/main_state.dart';

final Map<String,WidgetBuilder> map = {
  '/mainState':(BuildContext context)=>MainState(),
};

main()=>runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      routes: map,
      initialRoute: '/mainState',
      
    );
  }
}