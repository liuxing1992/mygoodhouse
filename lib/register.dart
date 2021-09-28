import 'package:flutter/material.dart';
import 'package:mygoodhouse/application.dart';
import 'package:mygoodhouse/routes.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("注册"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              const TextField(
                decoration: InputDecoration(
                    labelText: "账号",
                    hintText: '请输入账号',
                    hintStyle: TextStyle(color: Colors.grey)),
              ),
              const SizedBox(
                height: 20,
              ),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: "密码",
                  hintText: '请输入密码',
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: "密码",
                  hintText: '请输入密码',
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                  width: double.infinity,
                  height: 40.0,
                  child: ElevatedButton(onPressed: () {}, child: Text('登录'))),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('已有账号'),
                  TextButton(
                    onPressed: () {
                      Application.router
                          .navigateTo(context, Routes.login, replace: true);
                    },
                    child: Text('去登录~'),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
