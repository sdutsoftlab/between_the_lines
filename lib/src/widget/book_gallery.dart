/// FileName: book_gallery
/// Author: admin
/// Date: 2021-05-15 14:48
/// Description: 书籍横向滚动组件

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_between_the_lines/src/service/helper/BookIntroduction.dart';
import 'package:flutter_between_the_lines/src/widget/book_card.dart';

class BookGallery extends StatelessWidget {

  BookGallery({
      required this.bookIntroduction
  });

  /// 书籍数据
  final List<BookIntroduction> bookIntroduction;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: ListView.builder(
        itemCount: this.bookIntroduction.length,
        padding: EdgeInsets.zero,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: this.bookIntroduction[index].onTap,
            child: BookCard(
              title: this.bookIntroduction[index].title,
              imgSrc: this.bookIntroduction[index].imgSrc,
            ),
          );
        },
      ),
    );
  }
}
