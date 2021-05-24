/// FileName: world_list_items
/// Author: admin
/// Date: 2021-05-24 16:38
/// Description: 仿到梦空间世界推荐中的推荐项
/// 不使用数据接口，只有UI样式

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_between_the_lines/src/core/theme/theme_main.dart';
import 'package:flutter_between_the_lines/src/service/utils/style_kits.dart';

class WorldListItems extends StatelessWidget {
  Container _buildListItemHeader(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(StyleKits.px(18.5)),
      height: StyleKits.px(77),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [_buildHeaderUser(context), _buildHeaderButtons(context)],
      ),
    );
  }

  /// 头部左侧的头像和用户名区域
  GestureDetector _buildHeaderUser(BuildContext context) {
    /// 此处可以被点击，故加上Gesture
    return GestureDetector(
      onTap: () {
        print('头像部分被点击了！');
      },
      child: Row(
        children: [
          ClipOval(
            child: Image.network(
                'https://up.enterdesk.com/edpic_360_360/96/9b/1a/969b1a5c9e32c545f5242b0e5d534e0c.jpg'),
          ),
          SizedBox(
            width: StyleKits.px(10.5),
          ),
          Text(
            '南宫阜阳',
            style: TextStyle(fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }

  /// 头部右侧的关注和更多按钮部分
  Row _buildHeaderButtons(BuildContext context) {
    return Row(
      children: [
        _buildFavoriteButton(context),
        SizedBox(
          width: StyleKits.px(5.0),
        ),
        _buildMoreButton(context),
      ],
    );
  }

  /// 关注按钮
  GestureDetector _buildFavoriteButton(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print('点击了关注按钮！');
      },
      child: Container(
        padding: EdgeInsets.only(
            left: StyleKits.px(10.0), right: StyleKits.px(10.0)),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(StyleKits.px(5))),
            border: Border.all(color: Theme.of(context).primaryColor),
            color: Colors.transparent),
        child: Padding(
          padding: EdgeInsets.all(StyleKits.px(3.0)),
          child: Text(
            '关注',
            style: TextStyle(color: Theme.of(context).primaryColor),
          ),
        ),
      ),
    );
  }

  /// 更多按钮
  IconButton _buildMoreButton(BuildContext context) {
    return IconButton(
        onPressed: () {
          print('点击了更多按钮');
        },
        icon: Icon(
          Icons.more_horiz,
          color: ThemeMain.colorTextSub,
        ));
  }

  ///////////////////////////////////////////////////////

  /// 中间的组件，此处的child应该是参数传入过来的组件
  LayoutBuilder _buildCenterWidget() {
    return LayoutBuilder(builder: (context, constraints) {
      final widgetWidth = constraints.maxWidth;
      return Container(
        width: widgetWidth,
        height: widgetWidth,
        child: Image.network(
          'http://picture.ik123.com/uploads/allimg/141119/17-141119160055.jpg',
          fit: BoxFit.cover,
        ),
      );
    });
  }

  ///////////////////////////////////////////////////////

  Padding _buildBottomToolBar() {
    return Padding(
      padding: EdgeInsets.all(StyleKits.px(10.0)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [_buildLeftBottomToolBar(), _buildBookMarkIconButton()],
      ),
    );
  }

  Row _buildLeftBottomToolBar() {
    return Row(
      children: [
        _buildFavoriteIconButton(),
        _buildMessageIconButton(),
        _buildShareIconButton(),
      ],
    );
  }

  IconButton _buildFavoriteIconButton() {
    return IconButton(
        onPressed: () {
          print('点击了点赞按钮');
        },
        icon: Icon(
          Icons.favorite,
          color: ThemeMain.colorTextSub,
        ));
  }

  IconButton _buildMessageIconButton() {
    return IconButton(
      onPressed: () {
        print('点击了讨论按钮!');
      },
      icon: Icon(
        Icons.message,
        color: ThemeMain.colorTextSub,
      ),
    );
  }

  IconButton _buildShareIconButton() {
    return IconButton(
      onPressed: () {
        print('点击了分享按钮');
      },
      icon: Icon(
        Icons.share,
        color: ThemeMain.colorTextSub,
      ),
    );
  }

  IconButton _buildBookMarkIconButton() {
    return IconButton(
      onPressed: () {
        print('点击了收藏按钮!');
      },
      icon: Icon(
        Icons.bookmark,
        color: ThemeMain.colorTextSub,
      ),
    );
  }

  ///////////////////////////////////////////////////////

  Padding _buildGreatContainer() {
    return Padding(
      padding: EdgeInsets.symmetric(
          vertical: StyleKits.px(0.0), horizontal: StyleKits.px(25)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _buildSmallSubText('已收到198个赞'),
          _buildSmallSubText('昨天15:50'),
        ],
      ),
    );
  }

  Text _buildSmallSubText(String text) {
    return Text(
      text,
      style: TextStyle(
          fontSize: StyleKits.px(12.0), color: ThemeMain.colorTextSubmain),
    );
  }

  ///////////////////////////////////////////////////////

  Padding _buildBottomIntroduction() {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: StyleKits.px(20.5), horizontal: StyleKits.px(12.5)),
      child: _buildRichText(),
    );
  }

  RichText _buildRichText() {
    return RichText(
      text: TextSpan(style: TextStyle(fontSize: StyleKits.px(14.0), color: Colors.black), children: [
        TextSpan(text: '南宫阜阳', style: TextStyle(fontWeight: FontWeight.bold, fontSize: StyleKits.px(15.0))),
        TextSpan(text: '  '),
        TextSpan(
            text: '#动漫#',
            style: TextStyle(color: Colors.blue),
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                print('点击了动漫标签');
              }),
        TextSpan(text: '  '),
        TextSpan(
            text: '#风景#',
            style: TextStyle(color: Colors.blue),
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                print('点击了风景标签');
              }),
        TextSpan(text: '  '),
        TextSpan(
            text: '#清新#',
            style: TextStyle(color: Colors.blue),
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                print('点击了清新标签');
              }),
        TextSpan(text: '  '),
        TextSpan(text: '一个人就是一片沙丘', style: TextStyle( color: Colors.black54 )),
      ]),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildListItemHeader(context),
        _buildCenterWidget(),
        _buildBottomToolBar(),
        _buildGreatContainer(),
        _buildBottomIntroduction()
      ],
    );
  }
}
