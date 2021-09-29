import 'package:flutter/material.dart';
import 'package:mygoodhouse/pages/home/tab_index/tab_navigator.dart';
import 'package:mygoodhouse/widgets/common_swiper.dart';

class TabHome extends StatefulWidget {
  const TabHome({Key? key}) : super(key: key);

  @override
  _TabHomeState createState() => _TabHomeState();
}

class _TabHomeState extends State<TabHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('首页'),),
      body: ListView(
        children: [
          CommonSwiper(),
          IndexNavigator()
        ],
      ),
    );
  }
}
