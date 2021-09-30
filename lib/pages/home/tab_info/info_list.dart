import 'package:flutter/material.dart';

import 'info_data.dart';
import 'info_list_item.dart';

class InfoListWidget extends StatelessWidget {
  final bool visible;

  const InfoListWidget({Key? key, required this.visible}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.white,
      child: Column(
        children: <Widget>[
          Visibility(
            visible: this.visible,
            child: Container(
                padding: EdgeInsets.only(left: 10 , top: 10),
                alignment: Alignment.centerLeft,
                child: Text('房屋资讯')),
          ),
          Column(
            children: infoData.map((e) => InfoListItem(e)).toList(),
          ),
        ],
      ),
    );
  }
}
