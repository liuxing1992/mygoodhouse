import 'package:flutter/material.dart';
import 'package:mygoodhouse/application.dart';
import 'package:mygoodhouse/routes.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool showPassword = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("登录"),
      ),
      body: SafeArea(
        minimum: EdgeInsets.all(20),
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
              obscureText: !showPassword,
              decoration: InputDecoration(
                  labelText: "密码",
                  hintText: '请输入密码',
                  suffixIcon: IconButton(
                    icon: Icon(
                        showPassword ? Icons.visibility_off : Icons.visibility),
                    onPressed: () {
                      setState(() {
                        showPassword = !showPassword;
                      });
                    },
                  )),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
                width: double.infinity,
                height: 40.0,
                child: ElevatedButton(onPressed: () {}, child: Text('登录'))
            ),
            SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('没有账号' ),
                TextButton(onPressed: (){
                  Application.router.navigateTo(context, Routes.register ,
                      replace: true);
                }, child: Text('去注册~'),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
