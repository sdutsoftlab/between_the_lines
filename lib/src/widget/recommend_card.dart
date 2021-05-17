/// FileName: recommend_card
/// Author: admin
/// Date: 2021-05-15 16:20
/// Description: 推荐卡片组件

import 'package:flutter/material.dart';
import 'package:flutter_between_the_lines/src/service/defined.dart';
import 'package:flutter_between_the_lines/src/service/utils/style_kits.dart';

class RecommendCard extends StatelessWidget {

  RecommendCard({
    required this.title,
    required this.author,
    required this.imgSrc,
    required this.page,
    this.height,
    required this.onTapImage,
    required this.onTapSave});

  /// 标题
  final String title;

  /// 作者
  final String author;

  /// 图片链接
  final String imgSrc;

  /// 页数
  final int page;

  /// 组件高度
  final double? height;

  /// 点击收藏之后的动作
  final vfunc onTapSave;

  /// 点击图片之后的动作
  final vfunc onTapImage;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(StyleKits.px(8.0)),
      height: this.height ?? StyleKits.px(128),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          imageCard(),
          infoCard(),
          saveCard()
        ],
      ),
    );
  }

  Widget imageCard() {
    return Expanded(
      flex: 1,
      child: GestureDetector(
        child: Card(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusDirectional.circular(StyleKits.px(10.0))
          ),
          clipBehavior: Clip.antiAlias,
          child: Image.network(
            this.imgSrc,
            width: double.maxFinite,
          ),
        ),
        onTap: this.onTapImage,
      ),
    );
  }

  Widget infoCard() {
    return Expanded(
      flex: 3,
      child: Container(
        margin: EdgeInsets.all(StyleKits.px(7.5)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            titleText(),
            SizedBox(height: StyleKits.px(7.25),),
            authorText(),
            SizedBox(height: StyleKits.px(7.25),),
            pageWidget(),
          ],
        ),
      ),
    );
  }

  Text titleText() {
    return Text(
      this.title,
      style: TextStyle(
        fontSize: StyleKits.px(17.0),
        fontWeight: FontWeight.w800
      ),
    );
  }

  Text authorText() {
    return Text(
      this.author,
      style: TextStyle(
          fontSize: StyleKits.px(12.0),
        color: Color.fromRGBO(155, 155, 155, 1.0)
      ),
    );
  }

  Widget pageWidget() {
    return Row(
      children: [
        Icon(
            Icons.pages,
          color: Color.fromRGBO(155, 155, 155, 1.0),
          size: StyleKits.px(15.0),
        ),
        Text(
            ' ' + this.page.toString() + ' 页',
          style: TextStyle(
            fontSize: StyleKits.px(13.0),
            color: Color.fromRGBO(155, 155, 155, 1.0)
          ),
        )
      ],
    );
  }

  Widget saveCard() {
    return Expanded(
      flex: 1,
      child: IconButton(
          onPressed: this.onTapSave,
          icon: Icon(
              Icons.bookmark_border,
            color: Color.fromRGBO(155, 155, 155, 1.0),
          )
      ),
    );
  }
}
