import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:website_flutter/pages/CalendarSpace/src/CalendarSection.dart';
import 'package:website_flutter/pages/CalendarSpace/src/MeetingSection.dart';
import 'package:website_flutter/pages/CalendarSpace/src/TopContainer.dart';
import 'package:website_flutter/pages/Dashboard/src/SubHeader.dart';

class CalendarSpace extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Container(
        color: Color(0xfff7f7ff),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width * 0.28,
        child: Column(
          children: [
            SizedBox(
              height: 30.0,
            ),

            TopContainer(),
            CalendarSection(),
            SubHeader(
              title: 'Khách hàng',
            ),
            MeetingSection(),
            // ClipRRect(
            //   child: Image.network(
            //     'https://avatars.githubusercontent.com/u/19178854?s=400&v=4',
            //     height: 300.0,
            //     width: 400.0,
            //   ),
            // )
            MeetingSection(),
            MeetingSection(),
          ],
        ),
      ),
    );
  }
}
