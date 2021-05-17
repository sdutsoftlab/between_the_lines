/// FileName: favorite_grid_view
/// Author: admin
/// Date: 2021-05-16 13:49
/// Description: 收藏页面的宫格组件

import 'package:flutter/material.dart';
import 'package:flutter_between_the_lines/src/service/helper/BookIntroduction.dart';
import 'package:flutter_between_the_lines/src/service/utils/style_kits.dart';
import 'package:flutter_between_the_lines/src/widget/book_card.dart';

class FavoriteGridView extends StatelessWidget {

  FavoriteGridView({required this.bookIntroduction});

  /// 书籍列表
  final List<BookIntroduction> bookIntroduction;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.all(StyleKits.px(10.0)),
      shrinkWrap: true,
      physics: new NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: StyleKits.px(15.0),
          mainAxisSpacing: StyleKits.px(15.0),
          childAspectRatio: 0.6
      ),
      itemCount: this.bookIntroduction.length,
      itemBuilder: (BuildContext context, int index) {
        return GestureDetector(
          onTap: this.bookIntroduction[index].onTap,
          child: BookCard(
            title: this.bookIntroduction[index].title,
            imgSrc: this.bookIntroduction[index].imgSrc,
          ),
        );
      },
    );
  }
}

