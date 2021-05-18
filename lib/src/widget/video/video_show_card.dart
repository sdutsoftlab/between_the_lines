/// FileName: video_show_card
/// Author: admin
/// Date: 2021-05-17 19:53
/// Description: Video显示卡片，类似Bilibili首页视频卡片

import 'package:flutter/material.dart';
import 'package:flutter_between_the_lines/src/service/defined.dart';
import 'package:flutter_between_the_lines/src/service/utils/style_kits.dart';

class VideoShowCard extends StatelessWidget {

  VideoShowCard({
    required this.onPressed,
    required this.title,
    required this.imgSrc,
    required this.watchNum,
    required this.keepTime,
    required this.commentNum
  });

  /// 点击卡片后的事件
  final vfunc onPressed;

  /// 卡片的标题
  final String title;

  /// 卡片的图片路径
  final String imgSrc;

  /// 播放量
  final String watchNum;

  /// 视频时长
  final String keepTime;

  /// 评论数量
  final String commentNum;


  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 0.5,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(StyleKits.px(5))
        ),
        child: InkWell(
          onTap: this.onPressed,
          child: Column(
            children: [
              Stack(
                alignment: AlignmentDirectional.bottomCenter,
                children: [
                  AspectRatio(
                    aspectRatio: 16/10,
                    child: Image.network(
                      this.imgSrc,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Container(
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    height: StyleKits.px(25.0),
                    alignment: AlignmentDirectional.bottomCenter,
                    decoration: BoxDecoration(
                      boxShadow: [BoxShadow(color: Color.fromRGBO(0, 0, 0, 0.2), blurRadius: 3.0)],
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Color.fromRGBO(144, 144, 144, 0.1),
                          Color.fromRGBO(80, 80, 80, 0.1),
                          Color.fromRGBO(0, 0, 0, 0.1),
                          Color.fromRGBO(0, 0, 0, 0.3),
                          Color.fromRGBO(0, 0, 0, 0.5),
                          Color.fromRGBO(0, 0, 0, 0.7),
                        ]
                      )
                    ),
                    padding: EdgeInsets.only(left: StyleKits.px(8.5), right: StyleKits.px(8.5), bottom: StyleKits.px(5.5)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // 播放量和评论数
                        Row(
                          children: [
                            this.createInfoIcon(Icons.subscriptions_outlined),
                            SizedBox(width: StyleKits.px(2.0),),
                            this.createInfoText(this.watchNum),
                            SizedBox(width: StyleKits.px(5.0),),
                            this.createInfoIcon(Icons.create_outlined),
                            SizedBox(width: StyleKits.px(2.0),),
                            this.createInfoText(this.commentNum)
                          ],
                        ),
                        Container(
                          child: this.createInfoText(this.keepTime),
                        )
                      ],
                    ),
                  )
                ],
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(StyleKits.px(7.0)),
                  child: Text(
                    this.title,
                    style: TextStyle(
                        fontSize: StyleKits.px(12.5),
                        fontWeight: FontWeight.bold
                    ),
                    softWrap: true,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              )
            ],
          ),
        )
    );
  }

  Text createInfoText(String text) {
    return Text(text, style:
      TextStyle(
          fontSize: StyleKits.px(10.0),
          color: Colors.white
      ),
      overflow: TextOverflow.ellipsis,
      maxLines: 1,
    );
  }

  Icon createInfoIcon(IconData icons) {
    return Icon(icons, size: StyleKits.px(13.0), color: Colors.white,);
  }

}

