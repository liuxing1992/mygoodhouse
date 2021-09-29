import 'package:flutter/material.dart';
import 'package:flutter_swiper_null_safety/flutter_swiper_null_safety.dart';

const List<String> defaultImages = [
  'http://ww3.sinaimg.cn/large/006y8mN6ly1g6e2tdgve1j30ku0bsn75.jpg',
  'http://ww3.sinaimg.cn/large/006y8mN6ly1g6e2whp87sj30ku0bstec.jpg',
  'http://ww3.sinaimg.cn/large/006y8mN6ly1g6e2tl1v3bj30ku0bs77z.jpg',
];

class CommonSwiper extends StatelessWidget {
  final List<String> imageList;

  const CommonSwiper({Key? key, this.imageList = defaultImages})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 750/424,
      child: new Swiper(
        itemBuilder: (BuildContext context, int index) => Image.network(
          imageList[index],
          fit: BoxFit.cover,
        ),
        itemCount: imageList.length,
        autoplay: true,
        autoplayDelay: 5000 ,
        loop: true,
        pagination: SwiperPagination(alignment: Alignment.bottomCenter),
      ),
    );
  }
}
