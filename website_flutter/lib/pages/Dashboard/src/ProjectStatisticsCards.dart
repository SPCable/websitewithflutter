import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class ProjectStatisticsCards extends StatelessWidget {
  _generateData() {
    var pieData = [
      new Task('Work', 35.8, Color(0xff3366cc)),
      new Task('Eat', 8.3, Color(0xff990099)),
      new Task('Commute', 10.8, Color(0xff109618)),
      new Task('TV', 15.6, Color(0xfffdbe19)),
      new Task('Sleep', 19.2, Color(0xffff9900)),
      new Task('Other', 10.8, Color(0xffdc3912)),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: EdgeInsets.all(16),
          color: Colors.black,
          height: 500,
          width: 500,
        ),
        // Container(
        //   child: Row(
        //     children: [

        ProjectStatisticsCard(
          count: '1269',
          name: 'Báo cáo doanh thu',
          color: Color(0xff6C6CE5),
          descriptions: '+ 101 con chó đốm',
          progress: 0.68,
          progressString: '69%',
        ),
        //     ],
        //   ),
        // ),
      ],
    );
  }
}

class ProjectStatisticsCard extends StatelessWidget {
  final String count;
  final String name;
  final String descriptions;
  final double progress;
  final String progressString;
  final Color color;

  ProjectStatisticsCard({
    this.count,
    this.name,
    this.descriptions,
    this.progress,
    this.progressString,
    this.color,
  });
  
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.only(left: 40.0, right: 20.0),
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        height: 85.0,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    count,
                    style: GoogleFonts.quicksand(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    name,
                    style: GoogleFonts.quicksand(
                      fontSize: 13.0,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                  Text(
                    descriptions,
                    style: GoogleFonts.quicksand(
                      fontSize: 10.0,
                      fontWeight: FontWeight.w200,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            CircularPercentIndicator(
              radius: 55.0,
              lineWidth: 4.5,
              percent: progress,
              circularStrokeCap: CircularStrokeCap.round,
              center: Text(
                progressString,
                style: GoogleFonts.quicksand(
                  fontSize: 13.0,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
              ),
              progressColor: Colors.white,
              startAngle: 270,
              backgroundColor: Colors.white54,
            ),
          ],
        ),
      ),
    );
  }
}



class Task {
  String task;
  double taskvalue;
  Color colorval;

  Task(this.task, this.taskvalue, this.colorval);
}
