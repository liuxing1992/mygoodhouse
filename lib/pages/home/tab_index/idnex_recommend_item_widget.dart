import 'package:flutter/material.dart';
import 'package:mygoodhouse/pages/home/tab_index/tab_recommend_data.dart';
import 'package:mygoodhouse/widgets/common_image.dart';

class IndexRecommendItemWidget extends StatelessWidget {
  final IndexRecommendItem? item;

  const IndexRecommendItemWidget(this.item, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Container(
      padding: EdgeInsets.only(left: 10, right: 10),
      color: Colors.white,
      width: (MediaQuery.of(context).size.width - 30) / 2.0,
      // width: 170.0,
      height: 90.0,

      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item!.title,
                  textAlign: TextAlign.left,
                  overflow: TextOverflow.ellipsis,
                  softWrap: true,
                ),
                Text(item!.subTitle ,  textAlign: TextAlign.left,),
              ],
            ),
          ),
          CommonImage(
            item!.imageUrl,
            width: 54,
          )
        ],
      ),
    );
  }
}
