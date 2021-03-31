import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:website_flutter/pages/Dashboard/src/SubHeader.dart';

class MeetingSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          // SubHeader(
          //   title: 'Thành viên',
          // ),
          Padding(padding: EdgeInsets.symmetric(vertical: 10)),
          Container(
            height: 100.0,
            width: double.infinity,
            margin: EdgeInsets.symmetric(horizontal: 30.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Row(
              children: [
                Container(
                  width: 10.0,
                  decoration: BoxDecoration(
                      color: Colors.red.withOpacity(0.8),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10.0),
                        bottomLeft: Radius.circular(10.0),
                      )),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.27 - 60.0,
                  padding: EdgeInsets.only(left: 15.0, top: 10.0, right: 15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Bỏ gì vào đây cho đỡ trống :))',
                            style: GoogleFonts.quicksand(
                              fontSize: 13.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Icon(
                            Icons.more_horiz,
                            size: 20.0,
                            color: Colors.black26,
                          )
                        ],
                      ),
                      SizedBox(
                        width: 5.0,
                      ),
                      Text(
                        '14:13 PM - 15:00 PM',
                        style: GoogleFonts.quicksand(
                          fontSize: 9.0,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 13.0),
                        height: 50.0,
                        child: Stack(
                          children: [
                            //có thể thêm hoặc bỏ
                            Positioned(
                              left: 0.0,
                              child: Container(
                                height: 30.0,
                                width: 30.0,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: NetworkImage(
                                        'https://scontent.fsgn1-1.fna.fbcdn.net/v/t1.0-1/p240x240/160631321_2940746569548277_9075672025893917614_o.jpg?_nc_cat=110&ccb=1-3&_nc_sid=7206a8&_nc_ohc=z6zgMudUfOYAX_oKl0N&_nc_ht=scontent.fsgn1-1.fna&tp=6&oh=7512c4dcccf8941c61a11f78f5438dde&oe=6081EC61',
                                      ),
                                    ),
                                    borderRadius: BorderRadius.circular(20.0),
                                    border: Border.all(
                                      color: Colors.white,
                                    )),
                              ),
                            ),
                            Positioned(
                              left: 20.0,
                              child: Container(
                                height: 30.0,
                                width: 30.0,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: NetworkImage(
                                        'https://scontent.fsgn1-1.fna.fbcdn.net/v/t1.0-1/p240x240/160631321_2940746569548277_9075672025893917614_o.jpg?_nc_cat=110&ccb=1-3&_nc_sid=7206a8&_nc_ohc=z6zgMudUfOYAX_oKl0N&_nc_ht=scontent.fsgn1-1.fna&tp=6&oh=7512c4dcccf8941c61a11f78f5438dde&oe=6081EC61',
                                      ),
                                    ),
                                    // color: Colors.red,
                                    borderRadius: BorderRadius.circular(20.0),
                                    border: Border.all(
                                      color: Colors.white,
                                    )),
                              ),
                            ),
                            Positioned(
                              left: 40.0,
                              child: Container(
                                height: 30.0,
                                width: 30.0,
                                decoration: BoxDecoration(
                                    color: Colors.grey[800],
                                    borderRadius: BorderRadius.circular(20.0),
                                    border: Border.all(
                                      color: Colors.white,
                                    )),
                                child: Icon(
                                  Icons.add,
                                  size: 15.0,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
