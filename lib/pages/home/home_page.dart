import 'package:flutter/material.dart';
import 'package:mygoodhouse/pages/home/tab_index/index.dart';
import 'package:mygoodhouse/pages/home/tab_info/index.dart';
import 'package:mygoodhouse/pages/home/tab_mine/index.dart';
import 'package:mygoodhouse/pages/home/tab_search/index.dart';



List<Widget> tabView = [
  TabHome(),
  TabSearch(),
  TabInfo(),
  TabMine(),
];

List<BottomNavigationBarItem> tabItems = [
  BottomNavigationBarItem(label: '首页', icon: Icon(Icons.home)),
  BottomNavigationBarItem(label: '搜索', icon: Icon(Icons.search)),
  BottomNavigationBarItem(label: '信息', icon: Icon(Icons.settings)),
  BottomNavigationBarItem(label: '我的', icon: Icon(Icons.settings)),
];


class HomePage extends StatefulWidget {

  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  var _currentIndex = 0 ;


  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabView[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: tabItems,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.red,
        currentIndex: _currentIndex,
        elevation: 3.0,
        onTap: _onItemTapped,
      ),
    );
  }
}
