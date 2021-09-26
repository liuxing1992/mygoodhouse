import 'package:flutter/material.dart';

class PageContent extends StatelessWidget {

  final String name ;
  const PageContent({Key? key , this.name =""}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('当前页面$name'),
        centerTitle: true,),
      body: Center(child: Text(name),),
    );
  }
}
