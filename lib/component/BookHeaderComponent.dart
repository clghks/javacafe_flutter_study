import 'package:cracker_book/model/Book.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BookHeaderComponent extends StatelessWidget {
  var items = [
    Book("토론", "https://www.crackerbook.club/assets/main/chats.svg"),
    Book("발표", "https://www.crackerbook.club/assets/main/microphone.svg"),
    Book("글쓰기", "https://www.crackerbook.club/assets/main/note.svg"),
    Book("포트폴리오", "https://www.crackerbook.club/assets/main/desktop.svg"),
    Book("기타", "https://www.crackerbook.club/assets/main/etc.svg")
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      padding: EdgeInsets.all(10),
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: items.length,
        itemBuilder: (BuildContext context, int index) {
          return BookHeader(items[index]);
        },
        separatorBuilder: (context, index) {
          return SizedBox(width: 10);
        },
      ),
    );
  }
}

class BookHeader extends StatelessWidget {
  Book item;

  BookHeader(this.item);

  BoxDecoration getBoxDecoration() {
    return BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.all(Radius.circular(10)),
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
