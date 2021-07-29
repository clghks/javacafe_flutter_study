import 'package:cracker_book/component/BookHeaderComponent.dart';
import 'package:cracker_book/component/TitleAppBarComponent.dart';
import 'package:cracker_book/model/LikeStudyInfo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CategoryPage extends StatefulWidget {
  var pageIndex = 0;

  CategoryPage(this.pageIndex);

  @override
  _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    final double itemHeight = (size.height - 200) / 2;
    final double itemWidth = size.width / 2;

    return Scaffold(
      appBar: getTitleAppBar('카테고리별 스터디'),
      body: Container(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              BookHeaderComponent(false, clickIndex: widget.pageIndex, clickEvent: clickEvent),
              GridView.count(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                childAspectRatio: (itemWidth / itemHeight),
                padding: EdgeInsets.only(left: 20, right: 20),
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                children: [
                  CategoryItem(0, LikeStudyInfo('https://www.crackerbook.club/assets/main/greenBook.jpg', '한달 한권 ${widget.pageIndex}', '3/6', '04.26~05.26 토 14:00')),
                  CategoryItem(1, LikeStudyInfo('https://www.crackerbook.club/assets/main/greenBook.jpg', '한달 한권 ${widget.pageIndex}', '3/6', '04.26~05.26 토 14:00')),
                  CategoryItem(2, LikeStudyInfo('https://www.crackerbook.club/assets/main/greenBook.jpg', '한달 한권 ${widget.pageIndex}', '3/6', '04.26~05.26 토 14:00')),
                  CategoryItem(0, LikeStudyInfo('https://www.crackerbook.club/assets/main/greenBook.jpg', '한달 한권 ${widget.pageIndex}', '3/6', '04.26~05.26 토 14:00')),
                  CategoryItem(1, LikeStudyInfo('https://www.crackerbook.club/assets/main/greenBook.jpg', '한달 한권 ${widget.pageIndex}', '3/6', '04.26~05.26 토 14:00')),
                  CategoryItem(2, LikeStudyInfo('https://www.crackerbook.club/assets/main/greenBook.jpg', '한달 한권 ${widget.pageIndex}', '3/6', '04.26~05.26 토 14:00')),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  void clickEvent(int index) {
    setState(() {
      widget.pageIndex = index;
    });
  }
}

class CategoryItem extends StatelessWidget {
  int index;
  LikeStudyInfo item;

  CategoryItem(this.index, this.item);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [Image.network(item.image), SvgPicture.network('https://www.crackerbook.club/assets/main/like${index + 1}.svg')],
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
          )
        ],
      ),
    );
  }
}
