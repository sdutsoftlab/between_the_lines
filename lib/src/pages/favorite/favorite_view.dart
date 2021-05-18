import 'package:flutter/material.dart';
import '../../widget/public/paper_tip.dart';
import 'package:get/get.dart';

import 'favorite_logic.dart';
import 'favorite_state.dart';

class FavoritePage extends StatelessWidget {
  final FavoriteLogic logic = Get.put(FavoriteLogic());
  final FavoriteState state = Get.find<FavoriteLogic>().state;

  @override
  Widget build(BuildContext context) {
    return  ListView(
      padding: EdgeInsets.zero,
      children: [
        PageHeaderTip(
          title: 'Favorite',
          subtitle: 'What is your favorite book?',
          child: Image.network(
              'http://www.gx8899.com/uploads/allimg/2018032907/frxskibysyw.jpg'
          ),
        ),
      ],
    );
  }
}
