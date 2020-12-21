import 'package:flutter/material.dart';
import 'package:pdp_ui_facebook9/myhomepage.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
      routes: {
        MyHomePage.id:(context) =>MyHomePage(),

      },
    );
  }
}
