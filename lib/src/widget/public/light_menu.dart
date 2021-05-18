/// FileName: light_menu
/// Author: admin
/// Date: 2021-05-15 20:18
/// Description: 轻菜单，用于展示标签

import 'package:flutter/material.dart';
import 'package:flutter_between_the_lines/src/service/helper/light_menu_introduction.dart';
import 'package:flutter_between_the_lines/src/service/utils/style_kits.dart';
import 'little_card.dart';

class LightMenu extends StatelessWidget {

  LightMenu({this.paddingLength, this.title, required this.ligtMenuData});

  /// 菜单的内边距
  final double? paddingLength;

  /// 轻菜单的名称
  final String? title;

  /// 轻菜单内容
  final List<LightMenuIntroduction> ligtMenuData;



  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(0, StyleKits.px(7.0), 0, StyleKits.px(7.0)),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusDirectional.circular(StyleKits.px(10.0))
      ),
      elevation: 0,
      child: Column(
        children: [
          buildHeader(context),
          buildContent(context)
        ],
      ),
    );
  }

  Widget buildHeader(context) {
    return Container(
      alignment: Alignment.centerLeft,
      margin: EdgeInsets.fromLTRB(StyleKits.px(30), StyleKits.px(17.5), 0, 0),
      child: Text(
        this.title ?? '',
        style: TextStyle(
            color: Theme.of(context).primaryColor,
            fontSize: StyleKits.px(14.5),
            fontWeight: FontWeight.bold
        ),
      ),
    );
  }

  Widget buildContent(context) {
    return Container(
        padding: EdgeInsets.all(this.paddingLength ?? StyleKits.px(10.0)),
        child: IntrinsicHeight(
          child: Wrap(
            children: this.ligtMenuData.map((item) {
              return LittleCard(
                  title: item.title,
                  onTap: item.onTap
              );
            }).toList(),
          )
      )
    );
  }
}
