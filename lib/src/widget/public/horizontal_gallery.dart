/// FileName: book_gallery
/// Author: admin
/// Date: 2021-05-15 14:48
/// Description: 书籍横向滚动组件

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_between_the_lines/src/service/defined.dart';

class HorizontalGallery extends StatelessWidget {

  HorizontalGallery({
    required this.builder,
    required this.length
  });

  /// 构造器
  final builderFunction builder;

  /// 数据长度
  final int length;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: ListView.builder(
        itemCount: this.length,
        padding: EdgeInsets.zero,
        scrollDirection: Axis.horizontal,
        itemBuilder: this.builder,
      ),
    );
  }
}
