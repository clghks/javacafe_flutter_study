import 'package:cracker_book/model/StudyInfo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class StudyInfoComponent extends StatelessWidget {
  StudyInfo item;

  StudyInfoComponent(this.item);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Column(
                children: [
                  SvgPicture.network(item.profileImage),
                  SizedBox(height: 5),
                  Text(item.profileName, style: TextStyle(color: Color(0xFF999999)))
                ],
              ),
              SizedBox(width: 15),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      SvgPicture.network('https://www.crackerbook.club/assets/main/miniBook.svg'),
                      SizedBox(width: 5),
                      Text('토론', style: TextStyle(color: Color(0xFF677ac7))),
                      SizedBox(width: 15),
                      SvgPicture.network('https://www.crackerbook.club/assets/main/member.svg'),
                      SizedBox(width: 5),
                      Text('멤버 ${item.member}', style: TextStyle(color: Color(0xFF677ac7)))
                    ],
                  ),
                  SizedBox(height: 5),
                  Text(item.title, style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                  SizedBox(height: 5),
                  Text(item.date, style: TextStyle(fontSize: 12, color: Color(0xFF999999)))
                ],
              )
            ],
          ),
          Column(
            children: [
              SvgPicture.network('https://www.crackerbook.club/assets/main/heart.svg'),
              Text('${item.heart}')
            ],
          )//
        ],
      ),
    );
  }
}
