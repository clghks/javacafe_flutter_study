import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BottomNavigationBarComponent extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      child: Stack(
        children: [
          Container(
            margin: EdgeInsets.only(top: 30),
            height: 90,
            decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 8.0,
                  ),
                ]
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SvgPicture.network('https://www.crackerbook.club/assets/main/home.svg'),
                    Text('홈'),
                    SizedBox(height: 20)
                  ],
                ),
                onTap: () {

                },
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.network('https://www.crackerbook.club/assets/main/cookie.png'),
                  Text('스터디 만들기'),
                  SizedBox(height: 20)
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SvgPicture.network('https://www.crackerbook.club/assets/main/myPage.svg'),
                  Text('마이페이지'),
                  SizedBox(height: 20)
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
