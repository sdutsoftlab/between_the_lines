
/// 书籍详情页

import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_between_the_lines/src/service/helper/evaluation_introduction.dart';
import 'package:flutter_between_the_lines/src/service/utils/style_kits.dart';
import '../../widget/public/awesome_tab_bar.dart';
import '../../widget/public/evaluation_card.dart';
import 'package:get/get.dart';

import 'book_description_logic.dart';
import 'book_description_state.dart';

class BookDescriptionPage extends StatelessWidget {
  final BookDescriptionLogic logic = Get.put(BookDescriptionLogic());
  final BookDescriptionState state = Get.find<BookDescriptionLogic>().state;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
                'https://images03.kaleidescape.com/transformed/covers/1134x1624s/389/38950290.jpg',
            ),
            fit: BoxFit.cover
          )
        ),
        child: ClipRRect(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
            child: Column(
              children: [
                _buildAppBar(),
                _buildCardContainer(),
                _buildContentMain()
              ],
            )
          ),
        ),
      ),
    );
  }

  Container _buildAppBar() => Container(
    margin: EdgeInsets.all(StyleKits.px(12.0)),
    child: AppBar(
      shadowColor: Colors.transparent,
      backgroundColor: Colors.transparent,
      elevation: 0,
      iconTheme: IconThemeData(color: Colors.white),
      title: Text('Boy Erased', style: TextStyle(color: Colors.white),),
      centerTitle: true,
      actions: [
        IconButton(onPressed: (){}, icon: Icon(Icons.bookmark_border))
      ],
    ),
  );

  Container _buildCardContainer() => Container(
    height: StyleKits.px(256),
    margin: EdgeInsets.all(StyleKits.px(35.0)),
    decoration: BoxDecoration(
        color: Colors.transparent
    ),
    child: Center(
      child: Column(
        children: [
          Expanded(
              flex: 7,
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0)
                ),
                semanticContainer: true,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: AspectRatio(
                  aspectRatio: 3/4,
                  child: Image.network(
                    'https://images03.kaleidescape.com/transformed/covers/1134x1624s/389/38950290.jpg',
                    fit: BoxFit.fill,
                  ),
                ),
              )
          ),
          SizedBox(height: StyleKits.px(6.5),),
          Expanded(
            flex: 1,
            child: Text(
              'Boy Erased',
              style: TextStyle(fontSize: StyleKits.px(18.0), fontWeight: FontWeight.bold, color: Colors.white),
            ),
          ),
          Expanded(
            flex: 1,
            child: Text(
              'By Kribustion Wenston',
              style: TextStyle(fontSize: StyleKits.px(13.0), color: Color.fromRGBO(249, 249, 249, 1.00)),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    ),
  );

  Widget _buildContentMain() => Expanded(
    child: Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(topLeft: Radius.circular(30), topRight: Radius.circular(30))
      ),
      child: ListView(
        padding: EdgeInsets.zero,
        children: _buildDetailListView(),
      ),
    ),
  );
  
  List<Widget> _buildDetailListView() {
    return <Widget>[
      _buildEvaluationCard(),
      _buildDescriptionTabBar()
    ];
  }

  Widget _buildEvaluationCard() {
    return EvaluationCard(
        evaluationData: [
          EvaluationIntroduction(content: '4.6', introduction: 'Rating'),
          EvaluationIntroduction(content: 'Eng', introduction: 'Language'),
          EvaluationIntroduction(content: '304', introduction: 'Number of Page'),
      ]);
  }

  Widget _buildDescriptionTabBar() {
    return Padding(
      padding: EdgeInsets.all(StyleKits.px(10.0)),
      child: AwesomeTabBar(
          height: StyleKits.px(390),
          tabMaterialColor: Colors.transparent,
          tabBarViewList: [
            Container(
              padding: EdgeInsets.all(StyleKits.px(10.5)),
              child: Text(
                'I will open the LIA handbook, read a few sentences, and feel the old shame wash over me until I can no longer focus. Once again, Smid’s voice will swallow my own before I have a chance to say anything. I’ll face doubt, distrust my memories, spend hours trying to reconstruct scenes so charged with emotion they’ll seem impossible to pin down. I’ll call my mother to ask for details, sit with her at a table and record her words, and nearly every time one of us will end up in tears. My mother will apologize again and again. I will try to comfort her, but I’ll fail, because all of it truly was as horrible as we remember it, and because it will never really go away, we will never be completely okay. Our family will never be what it otherwise might have been.',
                style: TextStyle(
                    fontSize: StyleKits.px(14.5),
                  fontWeight: FontWeight.bold
                ),
              ),
            ),
            Container(
              child: ListView.builder(
                itemCount: 1090,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    margin: EdgeInsets.all(StyleKits.px(5.0)),
                    child: Text('Boy Erased：${index} Volume', style: TextStyle(fontSize: StyleKits.px(17.5), fontWeight: FontWeight.bold),),
                  );
                },),
            ),
          ],
          tabBarList: [
            Tab( text: 'Description' ),
            Tab( text: 'Chapter' ),
          ]
      ),
    );
  }
}
