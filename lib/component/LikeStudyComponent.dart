import 'package:cracker_book/model/StudyInfo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class LikeStudyComponent extends StatelessWidget {
  List<String> items = ["1", "2", "3", "4", "5"];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          LikeStudyHeader(),
          SizedBox(height: 20),
          Container(
            height: 240,
            child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  return LikeStudyItem();
                },
                separatorBuilder: (context, index) {
                  return SizedBox(width: 20);
                },
                itemCount: items.length),
          )
        ],
      ),
    );
  }
}

class LikeStudyHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('좋아요가 많은 스터디', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25)),
        Text('전체보기 >')
      ],
    );
  }
}

class LikeStudyItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              SvgPicture.network('https://www.crackerbook.club/assets/main/categoryBook2.svg'),
              SvgPicture.network('https://www.crackerbook.club/assets/main/like1.svg')
            ],
          ),
          Row(
            children: [
              SvgPicture.network('https://www.crackerbook.club/assets/main/miniBook.svg'),
              SizedBox(width: 2),
              Text('토론', style: TextStyle(color: Color(0xFF677ac7))),
              SizedBox(width: 4),
              SvgPicture.network('https://www.crackerbook.club/assets/main/member.svg'),
              SizedBox(width: 2),
              Text('멤버 3/6', style: TextStyle(color: Color(0xFF677ac7)))
            ],
          ),
          SizedBox(height: 3),
          Text('한달 한권', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
          SizedBox(height: 3),
          Text('04.26~05.26 토 14:00', style: TextStyle(fontSize: 12, color: Color(0xFF999999)))
        ],
      ),
    );
  }
}
