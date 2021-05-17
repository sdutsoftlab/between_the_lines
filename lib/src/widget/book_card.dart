/// FileName: book_card
/// Author: admin
/// Date: 2021-05-15 15:04
/// Description: 书籍卡片


import 'package:flutter/material.dart';
import 'package:flutter_between_the_lines/src/service/utils/style_kits.dart';

class BookCard extends StatelessWidget {

  final String? imgSrc;
  final String? title;
  final double? width;

  BookCard({
    this.title,
    this.imgSrc,
    this.width
  });


  @override
  Widget build(BuildContext context) {
    return Container(
      width: this.width ?? StyleKits.px(120),
      margin: EdgeInsets.fromLTRB(StyleKits.px(5.0), 0, StyleKits.px(5.0), 0),
      child: Card(
        child: Column(
          children: [
            Expanded(
              flex: 4,
              child: AspectRatio(
                aspectRatio: 3/4,
                child: Image.network(
                    this.imgSrc ??
                        '',
                    fit: BoxFit.cover
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                margin: EdgeInsets.only(
                    top: StyleKits.px(5)
                ),
                padding: EdgeInsets.all(3),
                child: Text(
                  this.title ??
                      '',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                      fontSize: StyleKits.px(12)
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

