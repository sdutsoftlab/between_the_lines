import 'package:flutter/material.dart';
import 'package:flutter_between_the_lines/src/service/helper/light_menu_introduction.dart';
import 'package:flutter_between_the_lines/src/service/utils/style_kits.dart';
import '../../widget/public/light_menu.dart';
import '../../widget/public/paper_tip.dart';
import '../../widget/public/search_bar.dart';
import 'package:get/get.dart';
import 'search_logic.dart';
import 'search_state.dart';

class SearchPage extends StatelessWidget {
  final SearchLogic logic = Get.put(SearchLogic());
  final SearchState state = Get.find<SearchLogic>().state;

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.zero,
      children: [
        PageHeaderTip(
          title: 'Search',
          subtitle: 'What are you looking for?',
          child: Image.network(
              'http://www.gx8899.com/uploads/allimg/2018011510/cvmnhbiohx2.jpg'
          ),
        ),
        SearchBar(
          prefixIcon: Icon(Icons.search, color: Color.fromRGBO(196, 196, 196, 1.00)),
          placeholder: 'Search',
          unselectBorderSide: BorderSide(color: Color.fromRGBO(233, 233, 233, 1.00), width: 0.5),
          selectBorderSide: BorderSide(color: Color.fromRGBO(196, 196, 196, 1.00), width: 1.0),
          backgroundColor: Color.fromRGBO(249, 249, 249, 1.00),
          inputTextColor: Color.fromRGBO(0, 0, 0, 0.5),
          placeholderColor: Color.fromRGBO(196, 196, 196, 1.00),
          floatButtonBackgroundColor: Theme.of(context).primaryColor,
          floatButtonChild: Icon(Icons.menu_outlined, color: Colors.white,),
          onPressed: (String value) {print('pressed search!');},
        ),
        Container(
          padding: EdgeInsets.all(StyleKits.px(10.0)),
          child: Column(
            children: [
              LightMenu(
                  title: '标签搜索',
                  ligtMenuData: [
                    LightMenuIntroduction(title: "The Road", onTap: (){}),
                    LightMenuIntroduction(title: "The Road", onTap: (){}),
                    LightMenuIntroduction(title: "The Road", onTap: (){}),
                    LightMenuIntroduction(title: "The Road", onTap: (){}),
                    LightMenuIntroduction(title: "The Road", onTap: (){}),
                    LightMenuIntroduction(title: "The Road", onTap: (){}),
                    LightMenuIntroduction(title: "The Road", onTap: (){}),
                    LightMenuIntroduction(title: "The Road", onTap: (){}),
                    LightMenuIntroduction(title: "The Road", onTap: (){}),
                    LightMenuIntroduction(title: "The Road", onTap: (){}),
                  ]),
              LightMenu(
                  title: '标签搜索',
                  ligtMenuData: [
                    LightMenuIntroduction(title: "The Road", onTap: (){}),
                    LightMenuIntroduction(title: "The Road", onTap: (){}),
                    LightMenuIntroduction(title: "The Road", onTap: (){}),
                    LightMenuIntroduction(title: "The Road", onTap: (){}),
                    LightMenuIntroduction(title: "The Road", onTap: (){}),
                    LightMenuIntroduction(title: "The Road", onTap: (){}),
                    LightMenuIntroduction(title: "The Road", onTap: (){}),
                    LightMenuIntroduction(title: "The Road", onTap: (){}),
                    LightMenuIntroduction(title: "The Road", onTap: (){}),
                    LightMenuIntroduction(title: "The Road", onTap: (){}),
                  ]),
              LightMenu(
                  title: '标签搜索',
                  ligtMenuData: [
                    LightMenuIntroduction(title: "The Road", onTap: (){}),
                    LightMenuIntroduction(title: "The Road", onTap: (){}),
                    LightMenuIntroduction(title: "The Road", onTap: (){}),
                    LightMenuIntroduction(title: "The Road", onTap: (){}),
                    LightMenuIntroduction(title: "The Road", onTap: (){}),
                    LightMenuIntroduction(title: "The Road", onTap: (){}),
                    LightMenuIntroduction(title: "The Road", onTap: (){}),
                    LightMenuIntroduction(title: "The Road", onTap: (){}),
                    LightMenuIntroduction(title: "The Road", onTap: (){}),
                    LightMenuIntroduction(title: "The Road", onTap: (){}),
                  ]),
              LightMenu(
                  title: '标签搜索',
                  ligtMenuData: [
                    LightMenuIntroduction(title: "The Road", onTap: (){}),
                    LightMenuIntroduction(title: "The Road", onTap: (){}),
                    LightMenuIntroduction(title: "The Road", onTap: (){}),
                    LightMenuIntroduction(title: "The Road", onTap: (){}),
                    LightMenuIntroduction(title: "The Road", onTap: (){}),
                    LightMenuIntroduction(title: "The Road", onTap: (){}),
                    LightMenuIntroduction(title: "The Road", onTap: (){}),
                    LightMenuIntroduction(title: "The Road", onTap: (){}),
                    LightMenuIntroduction(title: "The Road", onTap: (){}),
                    LightMenuIntroduction(title: "The Road", onTap: (){}),
                  ]),
              LightMenu(
                  title: '标签搜索',
                  ligtMenuData: [
                    LightMenuIntroduction(title: "The Road", onTap: (){}),
                    LightMenuIntroduction(title: "The Road", onTap: (){}),
                    LightMenuIntroduction(title: "The Road", onTap: (){}),
                    LightMenuIntroduction(title: "The Road", onTap: (){}),
                    LightMenuIntroduction(title: "The Road", onTap: (){}),
                    LightMenuIntroduction(title: "The Road", onTap: (){}),
                    LightMenuIntroduction(title: "The Road", onTap: (){}),
                    LightMenuIntroduction(title: "The Road", onTap: (){}),
                    LightMenuIntroduction(title: "The Road", onTap: (){}),
                    LightMenuIntroduction(title: "The Road", onTap: (){}),
                  ]),
            ],
          ),
        )
      ],
    );
  }
}
