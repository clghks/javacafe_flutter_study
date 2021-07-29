import 'package:flutter/material.dart';

import 'component/AppBarComponent.dart';
import 'component/BottomNavigationBarComponent.dart';
import 'home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cracker Book',
      theme: ThemeData(
        primaryColor: Colors.white,
        canvasColor: Colors.transparent,
      ),
      home: Scaffold(
        appBar: getAppBar(),
        body: Home(),
        bottomNavigationBar: BottomNavigationBarComponent(),
      ),
    );
  }
}
