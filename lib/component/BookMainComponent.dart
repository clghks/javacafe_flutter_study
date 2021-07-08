import 'package:cracker_book/component/StudyInfoComponent.dart';
import 'package:cracker_book/model/MainContent.dart';
import 'package:flutter/material.dart';

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
              Text("스터디", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25)),
              Text("전체보기 >"),
            ],
          ),
          SizedBox(height: 10),
          Container(
            decoration: getBoxDecoration(),
            width: MediaQuery.of(context).size.width,
            height: 300,
            child: Image.network(item.image),
          ),
          SizedBox(height: 10),
          StudyInfoComponent(item.studyInfo[0]),
          SizedBox(height: 5),
          StudyInfoComponent(item.studyInfo[1])
        ],
      ),
    );
  }
}
