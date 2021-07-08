import 'package:cracker_book/model/StudyInfo.dart';
import 'package:flutter/material.dart';

class MainContent {
  String name;
  String image;
  Color color;
  List<StudyInfo> studyInfo;

  MainContent(this.name, this.image, this.color, this.studyInfo);
}