import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:mygoodhouse/index.dart';
import 'package:mygoodhouse/login.dart';
import 'package:mygoodhouse/not_found_page.dart';
import 'package:mygoodhouse/pages/home/home_page.dart';
import 'package:mygoodhouse/register.dart';

class Routes {
  //定义路由名称
  static const String home = '/';
  static const String login = 'login';
  static const String register = '/register';
  static const String setting = '/setting';
  static const String roomAdd = '/roomAdd';
  static const String roomDetail = '/roomDetail';

  static final Handler _homeHandler = Handler(
      handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
    return  HomePage();
  });

  static final Handler _loginHandler = Handler(
      handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
    return const Login();
  });

  static final Handler _registerHandler = Handler(
      handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
    return const Register();
  });

  static final Handler _roomDetailHandler = Handler(
      handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
    return const Login();
  });

  static final Handler _notFoundHandler = Handler(
      handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
    return const NotFoundPage();
  });

  // 编写路由处理函数
  static void configureRoutes(FluroRouter router) {
    router.define(home, handler: _homeHandler);
    router.define(login, handler: _loginHandler);
    router.define(register, handler: _registerHandler);
    router.define(roomDetail, handler: _roomDetailHandler);
    router.notFoundHandler = _notFoundHandler;
  }
}
