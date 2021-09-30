import 'package:flutter/material.dart';
import 'package:mygoodhouse/widgets/common_image.dart';

import 'info_data.dart';

var textStyle = TextStyle(fontSize: 14, color: Colors.black54);

class InfoListItem extends StatelessWidget {
  final InfoItemData? itemData;

  const InfoListItem(this.itemData, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      height: 110,
      margin: EdgeInsets.only(bottom: 10),
      child: Row(
        children: <Widget>[
          CommonImage(
            itemData!.imageUrl,
            width: 120,
            height: 90,
            fit: BoxFit.cover,
          ),
          SizedBox(
            width: 10,
          ),
          Expanded(
            flex: 1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(itemData!.title ,style:
                TextStyle(fontWeight: FontWeight.w600, color: Colors.black)),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(itemData!.source , style: textStyle,),
                    Text(itemData!.time , style: textStyle),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
