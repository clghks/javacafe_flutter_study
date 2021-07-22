import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

AppBar getTitleAppBar(title) {
  String searchIcon = 'https://www.crackerbook.club/assets/detail/magnifyingGlass.svg';

  return AppBar(
    centerTitle: true,
    title: Text(title, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
    elevation: 0,
    actions: [
      SvgPicture.network(searchIcon),
      SizedBox(width: 20)
    ],
  );
}
