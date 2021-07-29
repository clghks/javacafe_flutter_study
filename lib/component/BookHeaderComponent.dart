import 'package:cracker_book/model/Book.dart';
import 'package:cracker_book/page/CategoryPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BookHeaderComponent extends StatefulWidget {
  var isRootPage = false;
  var clickIndex = -1;
  var clickEvent;

  var items = [
    Book("토론", "https://www.crackerbook.club/assets/main/chats.svg"),
    Book("발표", "https://www.crackerbook.club/assets/main/microphone.svg"),
    Book("글쓰기", "https://www.crackerbook.club/assets/main/note.svg"),
    Book("포트폴리오", "https://www.crackerbook.club/assets/main/desktop.svg"),
    Book("기타", "https://www.crackerbook.club/assets/main/etc.svg")
  ];

  BookHeaderComponent(this.isRootPage, {this.clickIndex, this.clickEvent});

  @override
  _BookHeaderComponentState createState() => _BookHeaderComponentState();
}

class _BookHeaderComponentState extends State<BookHeaderComponent> {
  int clickIndex;

  @override
  void initState() {
    super.initState();
    clickIndex = widget.clickIndex;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      padding: EdgeInsets.all(10),
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: widget.items.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            child: BookHeader(widget.items[index], widget.isRootPage ? false : index == clickIndex),
            onTap: () {
              onClickItem(context, index);
            },
          );
        },
        separatorBuilder: (context, index) {
          return SizedBox(width: 10);
        },
      ),
    );
  }

  void onClickItem(BuildContext context, int index) {
    if (widget.isRootPage) {
      Navigator.push(context, MaterialPageRoute(builder: (context) => CategoryPage(index)));
    } else {
      setState(() {
        clickIndex = index;
      });
      if (widget.clickEvent != null) {
        widget.clickEvent(index);
      }
    }
  }
}


class BookHeader extends StatelessWidget {
  Book item;
  bool isClick = false;

  BookHeader(this.item, this.isClick);

  BoxDecoration getBoxDecoration() {
    return BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.all(Radius.circular(10)),
      border: Border.all(width: 1, color: isClick ? Color(0xFFffd262) : Colors.white),
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.5),
          spreadRadius: 5,
          blurRadius: 7,
          offset: Offset(0, 3), // changes position of shadow
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 5),
        Container(
          padding: EdgeInsets.all(10),
          margin: EdgeInsets.all(10),
          decoration: getBoxDecoration(),
          child: SvgPicture.network(item.icon),
        ),
        Center(
          child: Text(item.name),
        )
      ],
    );
  }
}
