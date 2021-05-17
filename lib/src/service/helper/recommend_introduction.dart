import 'package:flutter_between_the_lines/src/service/defined.dart';

/// FileName: recommend_introduction
/// Author: admin
/// Date: 2021-05-15 16:16
/// Description: 推荐数据

class RecommendIntroduction {

  RecommendIntroduction({
    this.title = '',
    this.author = '',
    this.pages = 0,
    this.imgSrc = '',
    required this.onTapImage,
    required this.onTapSave
  });

  final String title;
  final String author;
  final int pages;
  final String imgSrc;
  final vfunc onTapImage;
  final vfunc onTapSave;


}