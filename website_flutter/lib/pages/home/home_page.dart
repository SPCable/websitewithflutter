import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:website_flutter/pages/home/src/CompanyName.dart';
import 'package:website_flutter/pages/home/src/NavBar.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: Alignment.centerLeft,
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: 100.0,
          color: Color(0xff333951),
          child: Stack(
            children: [
              CompanyName(),
              Align(
                alignment: Alignment.center,
                child: NavBar(),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: NavBarItem(
                  icon: Icons.logout,
                  active: false,
                ),
              )
            ],
          ),
        ));
  }
}
