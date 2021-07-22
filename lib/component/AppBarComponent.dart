import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

AppBar getAppBar() {
  String title = 'https://www.crackerbook.club/assets/main/HeaderTitle.svg';
  String searchIcon = 'https://www.crackerbook.club/assets/detail/magnifyingGlass.svg';

  return AppBar(
      centerTitle: true,
      title: SvgPicture.network(title),
      elevation: 0,
      actions: [
        SvgPicture.network(searchIcon),
        SizedBox(width: 20)
      ],
  );
}
