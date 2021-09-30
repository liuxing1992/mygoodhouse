import 'package:flutter/material.dart';
import 'index_navigator_item.dart';

class IndexNavigator extends StatelessWidget {
  const IndexNavigator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: indexNavigatorItemList
          .map((item) => Container(
                color: Colors.white,
                padding: EdgeInsets.only(top: 10 , bottom: 10),
                child: InkWell(
                  onTap: () {
                    item.onTap!(context);
                  },
                  child: Column(
                    children: [
                      Image.asset(
                        item.imageUrl,
                        width: 47.5,
                      ),
                      Text(
                        item.title,
                        style: TextStyle(
                            fontSize: 14.0,
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
              ))
          .toList(),
    );
  }
}
