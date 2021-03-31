import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:website_flutter/pages/Dashboard/src/ProjectProgressCard.dart';
import 'package:website_flutter/pages/Dashboard/src/ProjectStatisticsCards.dart';
import 'package:website_flutter/pages/Dashboard/src/SharedFilesItem.dart';
import 'package:website_flutter/pages/Dashboard/src/SubHeader.dart';
import 'package:website_flutter/pages/Dashboard/src/Tabs.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 100.0,
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width * 0.63,
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Container(
            //   margin: EdgeInsets.only(left: 30.0, top: 25.0, bottom: 10.0),
            //   child: Text(
            //     'HOME',
            //     style: GoogleFonts.quicksand(
            //       fontWeight: FontWeight.bold,
            //       fontSize: 20.0,
            //     ),
            //   ),
            // ),
            // Tabs(),
            Container(
              margin: EdgeInsets.only(top: 5.0),
              height: 200.0,
              width: MediaQuery.of(context).size.width * 0.62,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ProjectProgressCard(
                    color: Color(0xffFF4C60),
                    projectName: 'Sản phẩm',
                    percentComplete: '34%',
                    progressIndicatorColor: Colors.redAccent[100],
                    icon: Icons.monetization_on,
                  ),
                  ProjectProgressCard(
                      color: Color(0xff6C6CE5),
                      projectName: 'Nhân viên',
                      percentComplete: '78%',
                      progressIndicatorColor: Colors.blue[200],
                      icon: Icons.car_repair),
                  ProjectProgressCard(
                    color: Color(0xffFAAA1E),
                    projectName: 'Khách hàng',
                    percentComplete: '82%',
                    progressIndicatorColor: Colors.amber[200],
                    icon: Icons.local_airport,
                  )
                ],
              ),
            ),
            SubHeader(
              title: 'Đơn đặt hàng',
            ),
// Cần thêm listView ngay đây
            SharedFilesItem(
              color: Colors.blue,
              sharedFileName: 'Lâm Quốc Dũng',
              members: '28 sản phẩm', //số sản phẩm mua
              et: '10 Oct 2019', //ngày mua
              fileSize: '20.600.000 đ', //số tiền
            ),

            SharedFilesItem(
              color: Colors.yellow,
              sharedFileName: 'Nguyễn Vũ Hoàng Long',
              members: '9 sản phẩm',
              et: '11 Oct 2018',
              fileSize: '6.600.000 đ',
            ),

            SharedFilesItem(
              color: Colors.green[700],
              sharedFileName: 'Nguyễn Văn A',
              members: '10 sản phẩm',
              et: '11 Mar 2020',
              fileSize: '7.200.000 đ',
            ),

            SubHeader(
              title: 'Thống kê doanh số',
            ),

            ProjectStatisticsCards(),
          ],
        ),
      ),
    );
  }
}
