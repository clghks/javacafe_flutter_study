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
                  Text(item.profileName)
                ],
              ),
              SizedBox(width: 15),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      SvgPicture.network('https://www.crackerbook.club/assets/main/miniBook.svg'),
                      Text('토론'),
                      SvgPicture.network('https://www.crackerbook.club/assets/main/member.svg'),
                      Text('멤버 ${item.member}')
                    ],
                  ),
                  Text(item.title, style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                  Text(item.date)
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
