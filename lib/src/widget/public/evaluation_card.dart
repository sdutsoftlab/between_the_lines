/// FileName: evaluation_card
/// Author: admin
/// Date: 2021-05-16 17:18
/// Description: 书籍或视频评价信息，内部为横向列表

import 'package:flutter/material.dart';
import 'package:flutter_between_the_lines/src/service/helper/evaluation_introduction.dart';
import 'package:flutter_between_the_lines/src/service/utils/style_kits.dart';
import 'normal_divider.dart';

class EvaluationCard extends StatelessWidget {

  EvaluationCard({required this.evaluationData, this.height});

  /// 数据列表
  final List<EvaluationIntroduction> evaluationData;

  /// 高度
  final double? height;


  @override
  Widget build(BuildContext context) {
    // 获取父组件大小，加一层LayoutBuilder即可
    return LayoutBuilder(builder: (context, constrains) {
      var fatherWidth = constrains.maxWidth;
      return Container(
        height: this.height ?? StyleKits.px(80),
        margin: EdgeInsets.all(StyleKits.px(20)),
        child: Card(
            elevation: 0,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(StyleKits.px(15.0))
            ),
            color: Color.fromRGBO(250, 250, 250, 1.00),
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: this.evaluationData.length,
              itemBuilder: (BuildContext context, int index) {
                return SizedBox(
                  width: fatherWidth / 3.5,
                  child: Padding(
                    padding: EdgeInsets.all(StyleKits.px(12.5)),
                    child: Column(
                      children: [
                        Text(
                          this.evaluationData[index].content,
                          style: TextStyle(
                              fontSize: StyleKits.px(14.5),
                              fontWeight: FontWeight.bold,
                              color: Colors.black
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        SizedBox(height: StyleKits.px(12.5),),
                        Text(
                          this.evaluationData[index].introduction,
                          style: TextStyle(
                              fontSize: StyleKits.px(10.5),
                              fontWeight: FontWeight.bold,
                              color: Color.fromRGBO(196, 196, 196, 1.00),
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return NormalDivider();
              },
            )
        ),
      );
    });
  }
}
