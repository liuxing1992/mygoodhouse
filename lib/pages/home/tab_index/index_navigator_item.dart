import 'package:flutter/material.dart';
import 'package:mygoodhouse/application.dart';
import 'package:mygoodhouse/routes.dart';
import 'package:mygoodhouse/widgets/common_toast.dart';
import 'package:fluttertoast/fluttertoast.dart';

class IndexNavigatorItem {
  final String title;

  final String imageUrl;

  final Function(BuildContext context)? onTap;

  IndexNavigatorItem(this.title, this.imageUrl, this.onTap);
}

List<IndexNavigatorItem> indexNavigatorItemList = [
  IndexNavigatorItem('整租', 'static/images/home_index_navigator_total.png',
      (context) {
    Application.router.navigateTo(context, Routes.login);
  }),
  IndexNavigatorItem('合租', 'static/images/home_index_navigator_share.png',
      (context) {
        showToast('合租');
  }),
  IndexNavigatorItem('地图找房', 'static/images/home_index_navigator_map.png',
      (context) {
    showToast('地图找房');
  }),
  IndexNavigatorItem('去出租', 'static/images/home_index_navigator_rent.png',
      (context) {
    showToast('去出租');
  }),
];
