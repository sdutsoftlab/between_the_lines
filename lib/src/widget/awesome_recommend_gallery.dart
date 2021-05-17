/// FileName: awesome_recommend_gallery
/// Author: admin
/// Date: 2021-05-15 16:13
/// Description: 推荐纵向列表

import 'package:flutter/material.dart';
import 'package:flutter_between_the_lines/src/service/helper/recommend_introduction.dart';
import 'package:flutter_between_the_lines/src/service/utils/style_kits.dart';
import 'package:flutter_between_the_lines/src/widget/normal_divider.dart';
import 'package:flutter_between_the_lines/src/widget/recommend_card.dart';

class AwesomeRecommendGallery extends StatelessWidget {

  AwesomeRecommendGallery({
      this.galleryTitle = 'You might like',
      required this.recommendData,
      this.eachHeight
  });

  /// 推荐数据
  final List<RecommendIntroduction> recommendData;

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

            itemCount: this.recommendData.length,

            itemBuilder: (BuildContext context, int index) {
              return RecommendCard(
                title: this.recommendData[index].title,
                author: this.recommendData[index].author,
                imgSrc: this.recommendData[index].imgSrc,
                page: this.recommendData[index].pages,
                onTapImage: this.recommendData[index].onTapImage,
                onTapSave: this.recommendData[index].onTapSave
              );
            },
            separatorBuilder: (BuildContext context, int index) {
              return NormalDivider();
            },
          )
        ],
      ),
    );
  }
}
