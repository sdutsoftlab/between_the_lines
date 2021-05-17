/// FileName: little_card
/// Author: admin
/// Date: 2021-05-16 12:40
/// Description: 小卡片

import 'package:flutter/material.dart';
import 'package:flutter_between_the_lines/src/service/defined.dart';
import 'package:flutter_between_the_lines/src/service/utils/style_kits.dart';

class LittleCard extends StatelessWidget {

  LittleCard({ required this.title, required this.onTap });

  /// 内容
  final String? title;

  /// 点击事件
  final vfunc onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: this.onTap,
      child: Container(
          margin: EdgeInsets.all(StyleKits.px(7.0)),
          padding: EdgeInsets.fromLTRB(StyleKits.px(7.0), StyleKits.px(5.0), StyleKits.px(7.0), StyleKits.px(5.0)),
          height: StyleKits.px(40),
          decoration: BoxDecoration(
              borderRadius: BorderRadiusDirectional.circular(StyleKits.px(3.0)),
              color: Color.fromRGBO(238, 238, 238, 1.000)
          ),
          child: IntrinsicWidth(
            child: Center(
              child: Text(
                this.title ?? '',
                softWrap: true,
                style: TextStyle(
                    fontSize: StyleKits.px(12.0),
                    color: Color.fromRGBO(136, 136, 136, 1.00)
                ),
              ),
            ),
          )
      ),
    );
  }
}

