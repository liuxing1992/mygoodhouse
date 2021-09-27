import 'package:flutter/material.dart';
import 'package:mygoodhouse/application.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("登录"),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('登录'),
          onPressed: () {
            Application.router.pop(context);
          },
        ),
      ),
    );
  }
}
