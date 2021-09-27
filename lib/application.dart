import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:mygoodhouse/routes.dart';

class Application extends StatefulWidget {
  static late final FluroRouter router;
  const Application({Key? key}) : super(key: key);

  @override
  _ApplicationState createState() => _ApplicationState();
}

class _ApplicationState extends State<Application> {

  _ApplicationState(){
    final router = FluroRouter();
    Routes.configureRoutes(router);
    Application.router = router ;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'title',
      theme: ThemeData(primarySwatch: Colors.blue),
      onGenerateRoute: Application.router.generator,
      debugShowCheckedModeBanner: false,
    );
  }


}

