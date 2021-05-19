/// FileName: awesome_recommend_gallery
/// Author: admin
/// Date: 2021-05-15 16:13
/// Description: 推荐纵向列表, 有列表标题，列表分隔线

import 'package:flutter/material.dart';
import 'package:flutter_between_the_lines/src/service/defined.dart';
import 'package:flutter_between_the_lines/src/service/utils/style_kits.dart';
import 'normal_divider.dart';

class AwesomeRecommendGallery extends StatelessWidget {

  AwesomeRecommendGallery({
      this.galleryTitle = 'You might like',
      required this.builder,
      required this.length,
      this.eachHeight
  });

  /// 数据构建函数
  final builderFunction builder;

  /// 数据集的大小
  final int length;

  /// 表格的标题
  final String galleryTitle;

  /// 每一个项的固定高度
  final double? eachHeight;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(StyleKits.px(15.0), StyleKits.px(15.0), 0, StyleKits.px(15.0)),
            child: Text(
              this.galleryTitle,
              style: TextStyle(
                  fontSize: StyleKits.px(18.0),
                  fontWeight: FontWeight.bold
              ),
            ),
          ),
          ListView.separated(

            shrinkWrap: true,
            physics: new NeverScrollableScrollPhysics(),

            itemCount: this.length,

            itemBuilder: this.builder,

            separatorBuilder: (BuildContext context, int index) {
              return NormalDivider();
            },
          )
        ],
      ),
    );
  }
}
