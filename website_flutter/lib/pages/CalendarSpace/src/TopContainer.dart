import 'package:flutter/material.dart';

class TopContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(
                Icons.search,
                color: Colors.black54,
                size: 20.0,
              ),
              SizedBox(
                width: 5.0,
              ),
              Container(
                height: 20.0,
                width: 20.0,
                child: Stack(
                  children: [
                    Icon(
                      Icons.notifications,
                      color: Colors.black54,
                      size: 20.0,
                    ),
                    Align(
                      alignment: Alignment(0.7, -0.5),
                      child: Container(
                        height: 5.0,
                        width: 5.0,
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(20.0),
            child: Image.network(
              'https://scontent.fsgn1-1.fna.fbcdn.net/v/t1.0-1/p240x240/160631321_2940746569548277_9075672025893917614_o.jpg?_nc_cat=110&ccb=1-3&_nc_sid=7206a8&_nc_ohc=z6zgMudUfOYAX_oKl0N&_nc_ht=scontent.fsgn1-1.fna&tp=6&oh=7512c4dcccf8941c61a11f78f5438dde&oe=6081EC61',
              height: 30,
              width: 30,
              fit: BoxFit.cover,
            ),
          )
        ],
      ),
    );
  }
}
