import 'package:cracker_book/component/BookMainComponent.dart';
import 'package:flutter/material.dart';

import 'component/BookHeaderComponent.dart';
import 'component/LikeStudyComponent.dart';
import 'model/MainContent.dart';
import 'model/StudyInfo.dart';

class Home extends StatelessWidget {
  var items = [
    MainContent('눈치껏 못 배웁니다, 일센스...', 'https://www.crackerbook.club/assets/main/greenBook.jpg', Color(0xFF0fa76a), [
      StudyInfo('https://www.crackerbook.club/assets/main/profile2.svg', '김또깡', '사회초년생을 위한 직팁', '3/6', '2021.06.28 ~ 07.08 토 14:00', 6),
      StudyInfo('https://www.crackerbook.club/assets/main/profileGreen.svg', '주리', "'일센스'가 있는 사람이 되기 위해", '3/6', '2021.06.28 ~ 07.08 토 14:00', 6)
    ]),
    MainContent('생각의 쓰임', 'https://www.crackerbook.club/assets/main/thinkBook.svg', Color(0xFFe9e9e2), [
      StudyInfo('https://www.crackerbook.club/assets/main/profilePuple.svg', '김또깡', '사소한 일상으로 만드는 콘텐츠', '3/6', '2021.06.28 ~ 07.08 토 14:00', 6),
      StudyInfo('https://www.crackerbook.club/assets/main/profileYellow.svg', '주리', '마케터들의 아이디어 모임', '3/6', '2021.06.28 ~ 07.08 토 14:00', 6)
    ]),
    MainContent('엘라스틱서치 실무 가이드...', 'https://www.crackerbook.club/assets/main/elasticSearch.svg', Color(0xFFddd2c5), [
      StudyInfo('https://www.crackerbook.club/assets/main/profilePuple.svg', '김또깡', '사소한 일상으로 만드는 콘텐츠', '3/6', '2021.06.28 ~ 07.08 토 14:00', 6),
      StudyInfo('https://www.crackerbook.club/assets/main/profileGreen.svg', '주리', '마케터들의 아이디어 모임', '3/6', '2021.06.28 ~ 07.08 토 14:00', 6)
    ])
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: [
            BookHeaderComponent(true),
            ...items.map((e) => BookMainComponent(e)).toList(),
            LikeStudyComponent()
          ],
        ),
      ),
    );
  }
}
