import 'package:cracker_book/component/StudyInfoComponent.dart';
import 'package:cracker_book/model/MainContent.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BookMainComponent extends StatelessWidget {
  MainContent item;

  BookMainComponent(this.item);

  BoxDecoration getBoxDecoration() {
    return BoxDecoration(
      color: item.color,
      borderRadius: BorderRadius.all(Radius.circular(10)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("'${item.name}'의", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('스터디', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25)),
              Text('전체보기 >'),
            ],
          ),
          SizedBox(height: 10),
          Container(
            decoration: getBoxDecoration(),
            width: MediaQuery.of(context).size.width,
            height: 300,
            child: Stack(
              children: [
                Center(child: item.image.endsWith('svg') ? SvgPicture.network(item.image) : Image.network(item.image)),
                Positioned(
                  right: 20,
                  top: 20,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SvgPicture.network('https://www.crackerbook.club/assets/main/bookLike.svg'),
                      Text('14')
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 5),
          ...item.studyInfo.map((e) {
            return Column(children: [
              SizedBox(height: 10),
              StudyInfoComponent(e)]
            );
          })
        ],
      ),
    );
  }
}
