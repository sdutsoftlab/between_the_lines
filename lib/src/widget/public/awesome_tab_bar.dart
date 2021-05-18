/// FileName: awesome_tab_bar
/// Author: admin
/// Date: 2021-05-14 10:14
/// Description: 适用于 推荐栏Tab的组件

import 'package:flutter/material.dart';
import 'package:flutter_between_the_lines/src/service/utils/style_kits.dart';

/// AwesomeTabBar
/// 用于构建TabBar页面

// ignore: must_be_immutable
class AwesomeTabBar extends StatefulWidget {
  AwesomeTabBar({
    required this.tabBarViewList,
    required this.tabBarList,
    this.tabMaterialColor,
    this.tabLabelColor,
    this.tabIndicatorColor,
    this.enableLabelColor,
    this.unselectLabelColor,
    this.enableLabelStyle,
    this.unselectLabelStyle,
    this.alignment,
    this.height,
    this.width
  });

  /// 选中后的标签样式
  final TextStyle? enableLabelStyle;

  /// 对齐方式
  final CrossAxisAlignment? alignment;

  /// 未选中的标签样式
  final TextStyle? unselectLabelStyle;

  /// 选中的字体颜色
  final Color? enableLabelColor;

  /// 未选中的字体颜色
  final Color? unselectLabelColor;

  /// 页面列表
  final List<Widget> tabBarViewList;

  /// Tab页面
  final List<Widget> tabBarList;

  /// Tab控制栏主题颜色
  final Color? tabMaterialColor;

  /// Tab标签颜色
  final Color? tabLabelColor;

  /// Tab下划线的颜色
  final Color? tabIndicatorColor;

  /// 容器高度
  final double? height;

  /// 宽度限制
  final double? width;

  @override
  _AwesomeTabBarState createState() => _AwesomeTabBarState();
}

class _AwesomeTabBarState extends State<AwesomeTabBar>
    with SingleTickerProviderStateMixin, AutomaticKeepAliveClientMixin {

  late final TabController tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    this.tabController = TabController(length: this.widget.tabBarViewList.length, vsync: this);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    this.tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Container(
      width: this.widget.width,
      height: this.widget.height ?? StyleKits.px(275),
      margin: EdgeInsets.all(StyleKits.px(5.0)),
      child: Column(
        crossAxisAlignment: this.widget.alignment ??
            CrossAxisAlignment.start,
        children: [
          Material(
            color: this.widget.tabMaterialColor ??
                Theme.of(context).primaryColor,
            child: TabBar(
              isScrollable: true,
              indicatorColor: this.widget.tabIndicatorColor ??
                    Theme.of(context).primaryColor,
              tabs: this.widget.tabBarList,
              controller: this.tabController,
              labelColor: this.widget.enableLabelColor ??
                Colors.black,
              labelStyle: this.widget.enableLabelStyle ??
                TextStyle(fontSize: StyleKits.px(17), fontWeight: FontWeight.bold),
              unselectedLabelColor: this.widget.unselectLabelColor ??
                Color.fromRGBO(155, 155, 155, 1.0),
              unselectedLabelStyle: this.widget.unselectLabelStyle ??
                TextStyle(fontSize: StyleKits.px(14)),
            ),
          ),
          SizedBox(
            height: StyleKits.px(3.5),
          ),
          Flexible(
            child: TabBarView(
              children: this.widget.tabBarViewList,
              controller: this.tabController,
            ),
          )
        ],
      ),
    );
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}
