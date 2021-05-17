import '../defined.dart';

/// FileName: BookIntroduction
/// Author: admin
/// Date: 2021-05-15 14:57
/// Description: 书籍信息类


class BookIntroduction {

  BookIntroduction({
    this.title = '',
    this.imgSrc = '',
    required this.onTap
  });

  final String title;
  final String imgSrc;
  final vfunc onTap;
}