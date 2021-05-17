import 'package:demo/base_card.dart';
import 'package:flutter/material.dart';

// 本周推荐
class CardRecommend extends BaseCard {
  @override
  _CardRecommendState createState() => _CardRecommendState();
}

class _CardRecommendState extends BaseCardState {
  @override
  void initState() {
    subTitleColor = Color(0xffb99444);
    super.initState();
  }

  @override
  bottomContent() {
    // 高度盛满
    return Expanded(
        child: Container(
      constraints: BoxConstraints.expand(),
      margin: EdgeInsets.only(
        top: 20,
      ),
      child: Image.network(
        'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fwww.17qq.com%2Fimg_qqtouxiang%2F56587210.jpeg&refer=http%3A%2F%2Fwww.17qq.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1623764775&t=12993a6b951e0950652f3946d127e205',
        fit: BoxFit.cover, // 宽高充满容器
      ),
    ));
  }

  @override
  topTitle(String title) {
    return super.topTitle('本周推荐');
  }

  @override
  Widget subTitle(String title) {
    return super.subTitle('送你一天无限卡 全场书籍免费读');
  }
}
