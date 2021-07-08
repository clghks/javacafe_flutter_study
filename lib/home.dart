import 'package:cracker_book/component/BookMainComponent.dart';
import 'package:flutter/material.dart';

import 'component/BookHeaderComponent.dart';
import 'model/MainContent.dart';
import 'model/StudyInfo.dart';

class Home extends StatelessWidget {
  var items = [
    MainContent('눈치껏 못 배웁니다, 일센스...', 'https://www.crackerbook.club/assets/main/greenBook.jpg', Colors.green, [
      StudyInfo('https://www.crackerbook.club/assets/main/profilePuple.svg', '김또깡', '사소한 일상으로 만드는 콘텐츠', '3/6', '2021.06.28 ~ 07.08 토 14:00', 6),
      StudyInfo('https://www.crackerbook.club/assets/main/profileGreen.svg', '주리', '마케터들의 아이디어 모임', '3/6', '2021.06.28 ~ 07.08 토 14:00', 6)
    ]),
    MainContent('생각의 쓰임', 'https://www.crackerbook.club/assets/main/thinkBook.svg', Colors.grey, [
      StudyInfo('https://www.crackerbook.club/assets/main/profilePuple.svg', '김또깡', '사소한 일상으로 만드는 콘텐츠', '3/6', '2021.06.28 ~ 07.08 토 14:00', 6),
      StudyInfo('https://www.crackerbook.club/assets/main/profileGreen.svg', '주리', '마케터들의 아이디어 모임', '3/6', '2021.06.28 ~ 07.08 토 14:00', 6)
    ])
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          BookHeaderComponent(),
          SizedBox(
              height: 700,
              child: ListView.separated(
            itemCount: items.length,
            itemBuilder: (BuildContext context, int index) {
              return BookMainComponent(items[index]);
            },
            separatorBuilder: (context, index) {
              return SizedBox(width: 20);
            },
          )),
        ],
      ),
    );
  }
}
