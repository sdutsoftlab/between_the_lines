/*
 * @Description: 骨架组件
 * @Author: SkyinHand
 * @Email: zstk666@gmail.com
 * @Date: 2021-05-13 18:31:22
 * @LastEditTime: 2021-05-13 18:39:45
 * @LastEditors: SkyinHand
 */

import 'package:flutter/material.dart';
import 'package:flutter_between_the_lines/src/pages/favorite/favorite_view.dart';
import 'package:flutter_between_the_lines/src/pages/home/home_view.dart';
import 'package:flutter_between_the_lines/src/pages/search/search_view.dart';
import '../../pages/user/user_view.dart';

class ScaffoldMainClass extends StatefulWidget {
  @override
  _ScaffoldMainClassState createState() => _ScaffoldMainClassState();
}

class _ScaffoldMainClassState extends State<ScaffoldMainClass>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
  final List<Widget> tabBarViewList = [
    HomePage(),
    SearchPage(),
    FavoritePage(),
    UserPage()
  ];
  final List<Widget> tabBarList = [
    Tab(
      icon: Icon(Icons.home),
    ),
    Tab(
      icon: Icon(Icons.search),
    ),
    Tab(
      icon: Icon(Icons.favorite),
    ),
    Tab(
      icon: Icon(Icons.people),
    )
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    this.tabController =
        TabController(length: tabBarViewList.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(
        children: this.tabBarViewList,
        controller: this.tabController,
      ),
      bottomNavigationBar: Material(
          color: Theme.of(context).primaryColor,
          child: TabBar(
            indicatorColor: Colors.transparent,
            tabs: this.tabBarList,
            controller: this.tabController,
            labelColor: Colors.white,
          )),
    );
  }
}
