/// FileName: normal_divider
/// Author: admin
/// Date: 2021-05-15 20:09
/// Description: 普通的分割组件

import 'package:flutter/material.dart';

class NormalDivider extends StatelessWidget {

  NormalDivider({
    this.marginLength
  });

  /// 边距
  final double? marginLength;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(this.marginLength ?? 0.0),
      child:  Divider(
        height: .5,
        color: Color(0xFFDDDDDD),
      ),
    );
  }
}
