import 'package:flutter/material.dart';
import 'package:website_flutter/pages/CalendarSpace/CalendarSpace.dart';
import 'package:website_flutter/pages/Dashboard/Dashboard.dart';
import 'package:website_flutter/pages/home/home_page.dart';
import 'package:website_flutter/pages/login/login_page.dart';


void main() {
  runApp(MaterialApp(home: LoginPage()));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Stack(
        children: [
          HomePage(),
          Dashboard(),
          //giao diện của Quản lý
          CalendarSpace(),
        ],
      ),
    ));
  }
}
