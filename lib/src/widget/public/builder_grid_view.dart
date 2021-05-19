/// FileName: favorite_grid_view
/// Author: admin
/// Date: 2021-05-16 13:49
/// Description: 收藏页面的宫格组件, 简单宫格封装

import 'package:flutter/material.dart';
import 'package:flutter_between_the_lines/src/service/defined.dart';
import 'package:flutter_between_the_lines/src/service/utils/style_kits.dart';

class BuilderGridView extends StatelessWidget {
  BuilderGridView({
    required this.builder,
      required this.length,
      this.crossCount,
      this.galleryTitle,
    this.childAspectRatio,
    this.crossAxisSpacing,
    this.mainAxisSpacing
  });

  /// 构造器
  final builderFunction builder;

  /// 数据长度
  final int length;

  /// 一行的多少
  final int? crossCount;

  /// 标题
  final String? galleryTitle;

  /// 子组件比例
  final double? childAspectRatio;

  /// 从轴间隔
  final double? crossAxisSpacing;

  /// 主轴间隔
  final double? mainAxisSpacing;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(
                StyleKits.px(15.0), StyleKits.px(15.0), 0, StyleKits.px(15.0)),
            child: Text(
              this.galleryTitle ?? 'You might like:',
              style: TextStyle(
                  fontSize: StyleKits.px(18.0), fontWeight: FontWeight.bold),
            ),
          ),
          GridView.builder(
            padding: EdgeInsets.all(StyleKits.px(10.0)),
            shrinkWrap: true,
            physics: new NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: this.crossCount ?? 2,
                crossAxisSpacing: this.crossAxisSpacing ?? StyleKits.px(15.0),
                mainAxisSpacing: this.mainAxisSpacing ?? StyleKits.px(15.0),
                childAspectRatio: this.childAspectRatio ?? 0.6),
            itemCount: this.length,
            itemBuilder: this.builder,
          )
        ],
      ),
    );
  }
}
