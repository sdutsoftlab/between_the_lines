import 'package:flutter/material.dart';
import 'package:flutter_between_the_lines/src/service/helper/BookIntroduction.dart';
import 'package:flutter_between_the_lines/src/service/helper/recommend_introduction.dart';
import 'package:flutter_between_the_lines/src/service/router/app_router_map_values.dart';
import 'package:flutter_between_the_lines/src/service/utils/style_kits.dart';
import 'package:flutter_between_the_lines/src/widget/public/builder_grid_view.dart';
import 'package:flutter_between_the_lines/src/widget/video/video_show_card.dart';
import '../../widget/public/awesome_recommend_gallery.dart';
import '../../widget/public/awesome_tab_bar.dart';
import '../../widget/public/horizontal_gallery.dart';
import '../../widget/public/paper_tip.dart';
import 'package:get/get.dart';

import 'home_logic.dart';
import 'home_state.dart';

class HomePage extends StatelessWidget {
  final HomeLogic logic = Get.put(HomeLogic());
  final HomeState state = Get.find<HomeLogic>().state;

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.zero,
      children: [
        PageHeaderTip(
          title: 'Discover',
          subtitle: 'find your favorite movie!',
          child: Image.network(
              'https://c-ssl.duitang.com/uploads/item/201903/15/20190315004339_nWjPf.jpeg'
          ),
        ),
        BuilderGridView(
            mainAxisSpacing: StyleKits.px(0),
            crossAxisSpacing: StyleKits.px(0),
            childAspectRatio: 1.1,
            builder: (BuildContext context, int index) {
              return VideoShowCard(
                onPressed: () {
                  // 页面跳转
                  Get.toNamed(AppRouterMapValues.VideoPlayPage, parameters: {
                    "id": "1"
                  });
                },
                title: '【派大星的独白】一个关于正常人的故事',
                imgSrc: 'http://i1.hdslb.com/bfs/archive/3e2e1e0b3c1108b83148bd2f51b3d28fc94c3b63.jpg@412w_232h_1c.webp',
                commentNum: '3535.4万',
                keepTime: '3:40',
                watchNum: '6154.6万',
              );
            },
            length: 10,
            crossCount: 2
        )
      ],
    );
  }
}
