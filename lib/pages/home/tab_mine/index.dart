import 'package:flutter/material.dart';

class TabMine extends StatefulWidget {
  const TabMine({Key? key}) : super(key: key);

  @override
  _TabMineState createState() => _TabMineState();
}

class _TabMineState extends State<TabMine> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('我的'),),
    );
  }
}
