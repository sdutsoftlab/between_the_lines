/// FileName: search_bar
/// Author: admin
/// Date: 2021-05-15 19:31
/// Description: 搜索框

import 'package:flutter/material.dart';
import 'package:flutter_between_the_lines/src/service/defined.dart';
import 'package:flutter_between_the_lines/src/service/utils/style_kits.dart';

class SearchBar extends StatelessWidget {

  SearchBar({
    this.prefixIcon,
    this.placeholder,
    this.unselectBorderSide,
    this.selectBorderSide,
    this.backgroundColor,
    this.inputTextColor,
    this.placeholderColor,
    this.floatButtonBackgroundColor,
    this.floatButtonChild,
    required this.onPressed
  });

  /// 搜索框前面的图标
  final Icon? prefixIcon;

  /// 搜索框placeholder
  final String? placeholder;

  /// 搜索框未获取焦点的时候边框样式
  final BorderSide? unselectBorderSide;

  /// 搜索框获取焦点的时候边框样式
  final BorderSide? selectBorderSide;

  /// 背景颜色
  final Color? backgroundColor;

  /// 输入的文本颜色
  final Color? inputTextColor;

  /// placeholder颜色
  final Color? placeholderColor;

  /// 悬浮按钮的背景颜色
  final Color? floatButtonBackgroundColor;

  /// 悬浮按钮子组件
  final Widget? floatButtonChild;

  /// 点击了悬浮按钮或者按下了回车
  final sfunc onPressed;

  /// 控制器
  final TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(StyleKits.px(10.0)),
      child: buildTextField(context),
    );
  }

  TextField buildTextField(context) {
    return TextField(
      controller: this.textEditingController,
      style: TextStyle(
          color: this.inputTextColor
      ),
      decoration: InputDecoration(
          filled: true,
          fillColor: this.backgroundColor,
          hintText: this.placeholder,
          hintMaxLines: 1,
          hintStyle: TextStyle(
              color: this.placeholderColor
          ),
          enabledBorder: OutlineInputBorder(
              borderSide: this.unselectBorderSide ??
                  BorderSide(
                      color: Theme.of(context).primaryColor,
                      width: 0.5
                  )
          ),
          focusedBorder:  OutlineInputBorder(
              borderSide: this.selectBorderSide ??
                  BorderSide(
                      color: Theme.of(context).primaryColor,
                      width: 1
                  )
          ),
          prefixIcon: this.prefixIcon,
          suffixIcon: IconButton(icon: Icon(Icons.clear), color: this.placeholderColor, onPressed: () {
            this.textEditingController.clear();
            FocusScope.of(context).requestFocus(FocusNode());
          },),
      ),
      cursorColor: this.placeholderColor,
      onSubmitted: this.onPressed,
    );
  }

}
