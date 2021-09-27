import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:mygoodhouse/application.dart';
import 'package:mygoodhouse/page_content.dart';
import 'package:mygoodhouse/routes.dart';

class Index extends StatelessWidget {
  const Index({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('当前页面${Routes.home}'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: () {

             Application.router.navigateTo(context, Routes.login ,
                 transition : TransitionType.fadeIn );

            }, child: const Text('点击登录')),
            ElevatedButton(onPressed: () {}, child: const Text('点击登录')),
            ElevatedButton(
                onPressed: () {
                  Application.router.navigateTo(context, "path" , transition:
                  TransitionType.fadeIn);
                },
                child: const Text('点击找不到')),
          ],
        ),
      ),
    );
  }
}
