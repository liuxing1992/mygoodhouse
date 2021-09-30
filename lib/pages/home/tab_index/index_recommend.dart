import 'package:flutter/material.dart';
import 'package:mygoodhouse/pages/home/tab_index/tab_recommend_data.dart';

import 'idnex_recommend_item_widget.dart';

class IndexRecommend extends StatelessWidget {
  const IndexRecommend({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey.withAlpha(128),
      padding: EdgeInsets.all(10),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '房屋推荐',
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
              ),
              Text('更多',
                  style: TextStyle(fontWeight: FontWeight.w300, fontSize: 16)),
            ],
          ),
          SizedBox(
            height: 8,
          ),
          Wrap(
            spacing: 10,
            runSpacing: 10,
            children: indexRecommendData
                .map((e) => IndexRecommendItemWidget(
                     e
                    ))
                .toList(),
          )
        ],
      ),
    );
  }
}
