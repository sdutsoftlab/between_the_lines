import 'package:flutter/material.dart';
import 'package:flutter_between_the_lines/src/service/utils/style_kits.dart';
import 'package:flutter_between_the_lines/src/widget/paper_tip.dart';
import 'package:get/get.dart';

import 'user_logic.dart';
import 'user_state.dart';

class UserPage extends StatelessWidget {
  final UserLogic logic = Get.put(UserLogic());
  final UserState state = Get.find<UserLogic>().state;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(StyleKits.px(12.5)),
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          PageHeaderTip(
            title: 'Hi, Stranger',
            subtitle: 'What is your name?',
            child: Image.network(
                'https://tupian.qqw21.com/article/UploadPic/2018-9/201891216514211450.jpg'
            ),
          ),

        ],
      ),
    );
  }
}
