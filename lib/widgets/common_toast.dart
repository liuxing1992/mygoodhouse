import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void showToast(String content) {
  Fluttertoast.showToast(
    msg: content,
    gravity: ToastGravity.BOTTOM,
    fontSize: 20.0,
    toastLength: Toast.LENGTH_SHORT,
    backgroundColor: Colors.black54,
    textColor: Colors.white
  );
}
