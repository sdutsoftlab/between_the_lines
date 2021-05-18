/// FileName: paper_tip
/// Author: admin
/// Date: 2021-05-13 18:57
/// Description: 页面头部提示组件

import 'package:flutter/material.dart';
import 'package:flutter_between_the_lines/src/service/utils/style_kits.dart';

class PageHeaderTip extends StatelessWidget {

  PageHeaderTip({
    this.height,
    this.title = '',
    this.subtitle = '',
    this.child
  });

  /// 组件的高度
  final int? height;

  /// 组件的大标题
  final String title;

  /// 组件的副标题
  final String subtitle;

  /// 组件的子组件
  final Widget? child;


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(StyleKits.px(18.5)),
      padding: EdgeInsets.all(StyleKits.px(10.0)),
      height: this.height ?? StyleKits.px(80),
      child: Row(
        children: [
          Expanded(
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    this.title,
                    style: TextStyle(
                      fontSize: StyleKits.px(27)
                    ),
                  ),
                  Text(
                    this.subtitle,
                    style: TextStyle(
                        fontSize: StyleKits.px(16),
                      color: Color.fromRGBO(150,150,150, 1.0)
                    ),
                  )
                ],
              ),
            ),
            flex: 6,
          ),
          Expanded(
            child: this.child ?? Container(),
            flex: 2,
          )
        ],
      ),
    );
  }
}

