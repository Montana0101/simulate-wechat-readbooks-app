import 'package:demo/base_card.dart';
import 'package:flutter/cupertino.dart';

class CardShare extends BaseCard {
  @override
  _CardShareState createState() => _CardShareState();
}

class _CardShareState extends BaseCardState {
  @override
  bottomContent() {
    // TODO: implement bottomContent
    return Expanded(
        child: Container(
      margin: EdgeInsets.only(top: 20),
      decoration: BoxDecoration(color: Color(0xfff6f7f9)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end, // 水平向右
        children: <Widget>[
          Expanded(
              child: Padding(
                  padding: EdgeInsets.only(top: 20, bottom: 20),
                  child: Image.network(
                    'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fwww.17qq.com%2Fimg_qqtouxiang%2F56587210.jpeg&refer=http%3A%2F%2Fwww.17qq.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1623764775&t=12993a6b951e0950652f3946d127e205',
                    fit: BoxFit.cover, // 宽高充满容器
                  ))),
          Container(
            alignment: AlignmentDirectional.center,
            child: Padding(
              padding: EdgeInsets.only(bottom: 20),
              child: bottomTitle('00000001人 参与活动'),
            ),
          )
        ],
      ),
    ));
  }

  @override
  topTitle(String title) {
    // TODO: implement topTitle
    return super.topTitle('分享得代币');
  }

  @override
  Widget subTitle(String title) {
    return super.subTitle('分享给朋友获得代笔');
  }

  @override
  topTitle2(String title) {
    // TODO: implement topTitle2
    return Padding(
      padding: EdgeInsets.only(bottom: 5),
      child: Text(
        ' / 第一期',
        style: TextStyle(fontSize: 10),
      ),
    );
  }
}
