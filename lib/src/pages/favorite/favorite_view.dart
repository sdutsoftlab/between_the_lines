import 'package:flutter/material.dart';
import 'package:flutter_between_the_lines/src/service/helper/BookIntroduction.dart';
import 'package:flutter_between_the_lines/src/service/helper/light_menu_introduction.dart';
import 'package:flutter_between_the_lines/src/service/utils/style_kits.dart';
import 'package:flutter_between_the_lines/src/widget/favorite_grid_view.dart';
import 'package:flutter_between_the_lines/src/widget/light_menu.dart';
import 'package:flutter_between_the_lines/src/widget/paper_tip.dart';
import 'package:flutter_between_the_lines/src/widget/search_bar.dart';
import 'package:get/get.dart';

import 'favorite_logic.dart';
import 'favorite_state.dart';

class FavoritePage extends StatelessWidget {
  final FavoriteLogic logic = Get.put(FavoriteLogic());
  final FavoriteState state = Get.find<FavoriteLogic>().state;

  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: EdgeInsets.all(StyleKits.px(12.5)),
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          PageHeaderTip(
            title: 'Favorite',
            subtitle: 'What is your favorite book?',
            child: Image.network(
                'http://www.gx8899.com/uploads/allimg/2018032907/frxskibysyw.jpg'
            ),
          ),
          FavoriteGridView(
            bookIntroduction: [
              BookIntroduction(onTap: (){}, title: 'Boy Erased', imgSrc: 'https://images03.kaleidescape.com/transformed/covers/1134x1624s/389/38950290.jpg'),
              BookIntroduction(onTap: (){}, title: 'Boy Erased', imgSrc: 'https://images03.kaleidescape.com/transformed/covers/1134x1624s/389/38950290.jpg'),
              BookIntroduction(onTap: (){}, title: 'Boy Erased', imgSrc: 'https://images03.kaleidescape.com/transformed/covers/1134x1624s/389/38950290.jpg'),
              BookIntroduction(onTap: (){}, title: 'Boy Erased', imgSrc: 'https://images03.kaleidescape.com/transformed/covers/1134x1624s/389/38950290.jpg'),
              BookIntroduction(onTap: (){}, title: 'Boy Erased', imgSrc: 'https://images03.kaleidescape.com/transformed/covers/1134x1624s/389/38950290.jpg'),
              BookIntroduction(onTap: (){}, title: 'Boy Erased', imgSrc: 'https://images03.kaleidescape.com/transformed/covers/1134x1624s/389/38950290.jpg'),
              BookIntroduction(onTap: (){}, title: 'Boy Erased', imgSrc: 'https://images03.kaleidescape.com/transformed/covers/1134x1624s/389/38950290.jpg'),
              BookIntroduction(onTap: (){}, title: 'Boy Erased', imgSrc: 'https://images03.kaleidescape.com/transformed/covers/1134x1624s/389/38950290.jpg'),
              BookIntroduction(onTap: (){}, title: 'Boy Erased', imgSrc: 'https://images03.kaleidescape.com/transformed/covers/1134x1624s/389/38950290.jpg'),
              BookIntroduction(onTap: (){}, title: 'Boy Erased', imgSrc: 'https://images03.kaleidescape.com/transformed/covers/1134x1624s/389/38950290.jpg'),
              BookIntroduction(onTap: (){}, title: 'Boy Erased', imgSrc: 'https://images03.kaleidescape.com/transformed/covers/1134x1624s/389/38950290.jpg'),
              BookIntroduction(onTap: (){}, title: 'Boy Erased', imgSrc: 'https://images03.kaleidescape.com/transformed/covers/1134x1624s/389/38950290.jpg'),
              BookIntroduction(onTap: (){}, title: 'Boy Erased', imgSrc: 'https://images03.kaleidescape.com/transformed/covers/1134x1624s/389/38950290.jpg'),
              BookIntroduction(onTap: (){}, title: 'Boy Erased', imgSrc: 'https://images03.kaleidescape.com/transformed/covers/1134x1624s/389/38950290.jpg'),
              BookIntroduction(onTap: (){}, title: 'Boy Erased', imgSrc: 'https://images03.kaleidescape.com/transformed/covers/1134x1624s/389/38950290.jpg'),
              BookIntroduction(onTap: (){}, title: 'Boy Erased', imgSrc: 'https://images03.kaleidescape.com/transformed/covers/1134x1624s/389/38950290.jpg'),
              BookIntroduction(onTap: (){}, title: 'Boy Erased', imgSrc: 'https://images03.kaleidescape.com/transformed/covers/1134x1624s/389/38950290.jpg'),
              BookIntroduction(onTap: (){}, title: 'Boy Erased', imgSrc: 'https://images03.kaleidescape.com/transformed/covers/1134x1624s/389/38950290.jpg'),
              BookIntroduction(onTap: (){}, title: 'Boy Erased', imgSrc: 'https://images03.kaleidescape.com/transformed/covers/1134x1624s/389/38950290.jpg'),
              BookIntroduction(onTap: (){}, title: 'Boy Erased', imgSrc: 'https://images03.kaleidescape.com/transformed/covers/1134x1624s/389/38950290.jpg'),
          ])
        ],
      ),
    );
  }
}
