import 'package:cracker_book/model/LikeStudyInfo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class LikeStudyComponent extends StatelessWidget {
  var items = [
    LikeStudyInfo('https://www.crackerbook.club/assets/main/categoryBook2.svg', '한달 한권', '3/6', '04.26~05.26 토 14:00'),
    LikeStudyInfo('https://www.crackerbook.club/assets/main/categoryBook2.svg', '한달 한권', '3/6', '04.26~05.26 토 14:00'),
    LikeStudyInfo('https://www.crackerbook.club/assets/main/categoryBook2.svg', '한달 한권', '3/6', '04.26~05.26 토 14:00')
  ];

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
                  return LikeStudyItem(index, items[index]);
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
  int index;
  LikeStudyInfo item;

  LikeStudyItem(this.index, this.item);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              SvgPicture.network(item.image),
              SvgPicture.network('https://www.crackerbook.club/assets/main/like${index + 1}.svg')
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
              Text('멤버 ${item.member}', style: TextStyle(color: Color(0xFF677ac7)))
            ],
          ),
          SizedBox(height: 3),
          Text(item.title, style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
          SizedBox(height: 3),
          Text(item.date, style: TextStyle(fontSize: 12, color: Color(0xFF999999)))
        ],
      ),
    );
  }
}
