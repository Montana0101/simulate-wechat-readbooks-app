import 'package:demo/card_recommend.dart';
import 'package:demo/card_share.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'custom_appbar.dart';

class ContentPage extends StatefulWidget {
  final ValueChanged<int> onPageChanged;
  final ContentPageController contentPageController;

  // 构造方法，可选参数
  const ContentPage({Key key, this.onPageChanged, this.contentPageController})
      // 初始化列表
      : super(key: key);

  @override
  _ContentPageState createState() => _ContentPageState();
}

class _ContentPageState extends State<ContentPage> {
  PageController _pageController = PageController(
      // 视图比例
      viewportFraction: 0.8);

  static List<Color> _colors = [
    Colors.blue,
    Colors.red,
    Colors.deepOrange,
    Colors.blue
  ];

  @override
  void initState() {
    if (widget.contentPageController != null) {
      widget.contentPageController._pageController = _pageController;
    }
    _statusBar();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // 实现上下结构布局
    return Column(
      children: <Widget>[
        // appBar
        CustomAppBar(),
        // pageView左右滑动组件
        Expanded(
            // expanded 作用是撑开高度，没有高度在column里会报错
            child: PageView(
          onPageChanged: widget.onPageChanged,
          controller: _pageController,
          children: <Widget>[
            _wrapItem(CardRecommend()),
            _wrapItem(CardShare()),
            _wrapItem(CardRecommend()),
            _wrapItem(CardRecommend()),
            // _wrapItem(1),
            // _wrapItem(2),
            // _wrapItem(3)
          ],
        ))
      ],
    );
  }

  Widget _wrapItem(Widget widget) {
    return Padding(padding: EdgeInsets.all(10), child: widget);
  }

  // 状态栏样式-沉浸式状态栏
  _statusBar() {
    // 黑色沉浸式状态栏，基于SystemUiOverlayStyle.dark修改了statusBarColor
    SystemUiOverlayStyle uiOverlayStyle = SystemUiOverlayStyle(
      systemNavigationBarColor: Color(0xFF000000),
      systemNavigationBarDividerColor: null,
      statusBarColor: Colors.transparent,
      systemNavigationBarIconBrightness: Brightness.light,
      statusBarIconBrightness: Brightness.dark,
      statusBarBrightness: Brightness.light,
    );
    SystemChrome.setSystemUIOverlayStyle(uiOverlayStyle);
  }
}

// 内容区域控制器
class ContentPageController {
  PageController _pageController;

  void jumpToPage(int page) {
    _pageController?.jumpToPage(page);
  }
}
