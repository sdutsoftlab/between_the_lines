import 'package:flutter/material.dart';
import 'package:flutter_between_the_lines/src/service/helper/BookIntroduction.dart';
import 'package:flutter_between_the_lines/src/service/helper/recommend_introduction.dart';
import 'package:flutter_between_the_lines/src/service/router/app_router_map_values.dart';
import 'package:flutter_between_the_lines/src/service/utils/style_kits.dart';
import 'package:flutter_between_the_lines/src/widget/awesome_recommend_gallery.dart';
import 'package:flutter_between_the_lines/src/widget/awesome_tab_bar.dart';
import 'package:flutter_between_the_lines/src/widget/book_gallery.dart';
import 'package:flutter_between_the_lines/src/widget/paper_tip.dart';
import 'package:get/get.dart';

import 'home_logic.dart';
import 'home_state.dart';

class HomePage extends StatelessWidget {
  final HomeLogic logic = Get.put(HomeLogic());
  final HomeState state = Get.find<HomeLogic>().state;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(StyleKits.px(12.5)),
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          PageHeaderTip(
            title: 'Discover',
            subtitle: 'find your favorite book!',
            child: Image.network(
                'https://c-ssl.duitang.com/uploads/item/201903/15/20190315004339_nWjPf.jpeg'
            ),
          ),
          AwesomeTabBar(
              height: StyleKits.px(275),
              tabMaterialColor: Colors.transparent,
              tabBarViewList: [
                BookGallery(
                  bookIntroduction: [
                    BookIntroduction(onTap: (){
                      Get.toNamed(AppRouterMapValues.BookDescriptionPage, parameters: {
                        "id": "1"
                      });
                    }, title: 'Boy Erased', imgSrc: 'https://images03.kaleidescape.com/transformed/covers/1134x1624s/389/38950290.jpg'),
                    BookIntroduction(onTap: (){}, title: 'Boy Erased', imgSrc: 'https://images03.kaleidescape.com/transformed/covers/1134x1624s/389/38950290.jpg'),
                    BookIntroduction(onTap: (){}, title: 'Boy Erased', imgSrc: 'https://images03.kaleidescape.com/transformed/covers/1134x1624s/389/38950290.jpg'),
                    BookIntroduction(onTap: (){}, title: 'Boy Erased', imgSrc: 'https://images03.kaleidescape.com/transformed/covers/1134x1624s/389/38950290.jpg'),
                    BookIntroduction(onTap: (){}, title: 'Boy Erased', imgSrc: 'https://images03.kaleidescape.com/transformed/covers/1134x1624s/389/38950290.jpg'),
                  ],
                ),
                BookGallery(
                  bookIntroduction: [
                    BookIntroduction(onTap: (){}, title: 'Inspiration Speaks(Volume 1)', imgSrc: 'http://wintergoosepublishing.com/wp-content/uploads/2011/05/ArtPlatform-BookCover-Final-Flat.jpg'),
                    BookIntroduction(onTap: (){}, title: 'Inspiration Speaks(Volume 1)', imgSrc: 'http://wintergoosepublishing.com/wp-content/uploads/2011/05/ArtPlatform-BookCover-Final-Flat.jpg'),
                    BookIntroduction(onTap: (){}, title: 'Inspiration Speaks(Volume 1)', imgSrc: 'http://wintergoosepublishing.com/wp-content/uploads/2011/05/ArtPlatform-BookCover-Final-Flat.jpg'),
                    BookIntroduction(onTap: (){}, title: 'Inspiration Speaks(Volume 1)', imgSrc: 'http://wintergoosepublishing.com/wp-content/uploads/2011/05/ArtPlatform-BookCover-Final-Flat.jpg'),
                    BookIntroduction(onTap: (){}, title: 'Inspiration Speaks(Volume 1)', imgSrc: 'http://wintergoosepublishing.com/wp-content/uploads/2011/05/ArtPlatform-BookCover-Final-Flat.jpg'),
                  ],
                ),
                BookGallery(
                  bookIntroduction: [
                    BookIntroduction(onTap: (){}, title: 'Twilight', imgSrc: 'https://th.bing.com/th/id/R54504e9d71f63a36ec3018f4a613f5a7?rik=lth6Fk%2be6kCVfw&riu=http%3a%2f%2fwww.coverwhiz.com%2fcontent%2fTwilight.jpg&ehk=s5otansZtlHLDBIkpQubKCfAAl1diKKzamerexNiIcs%3d&risl=&pid=ImgRaw'),
                    BookIntroduction(onTap: (){}, title: 'Twilight', imgSrc: 'https://th.bing.com/th/id/R54504e9d71f63a36ec3018f4a613f5a7?rik=lth6Fk%2be6kCVfw&riu=http%3a%2f%2fwww.coverwhiz.com%2fcontent%2fTwilight.jpg&ehk=s5otansZtlHLDBIkpQubKCfAAl1diKKzamerexNiIcs%3d&risl=&pid=ImgRaw'),
                    BookIntroduction(onTap: (){}, title: 'Twilight', imgSrc: 'https://th.bing.com/th/id/R54504e9d71f63a36ec3018f4a613f5a7?rik=lth6Fk%2be6kCVfw&riu=http%3a%2f%2fwww.coverwhiz.com%2fcontent%2fTwilight.jpg&ehk=s5otansZtlHLDBIkpQubKCfAAl1diKKzamerexNiIcs%3d&risl=&pid=ImgRaw'),
                    BookIntroduction(onTap: (){}, title: 'Twilight', imgSrc: 'https://th.bing.com/th/id/R54504e9d71f63a36ec3018f4a613f5a7?rik=lth6Fk%2be6kCVfw&riu=http%3a%2f%2fwww.coverwhiz.com%2fcontent%2fTwilight.jpg&ehk=s5otansZtlHLDBIkpQubKCfAAl1diKKzamerexNiIcs%3d&risl=&pid=ImgRaw'),
                    BookIntroduction(onTap: (){}, title: 'Twilight', imgSrc: 'https://th.bing.com/th/id/R54504e9d71f63a36ec3018f4a613f5a7?rik=lth6Fk%2be6kCVfw&riu=http%3a%2f%2fwww.coverwhiz.com%2fcontent%2fTwilight.jpg&ehk=s5otansZtlHLDBIkpQubKCfAAl1diKKzamerexNiIcs%3d&risl=&pid=ImgRaw'),

                  ],
                ),
              ],
              tabBarList: [
                Tab(
                  text: 'Popular',
                ),
                Tab(
                  text: 'Newst',
                ),
                Tab(
                  text: 'Bestsellers',
                ),
              ]
          ),
          AwesomeRecommendGallery(
            galleryTitle: 'You might like',
              eachHeight: StyleKits.px(150),
              recommendData: [
            RecommendIntroduction(
                  title: 'Where The Trees Were',
                  author: 'Inga Simpson',
                  pages: 288,
                  imgSrc: 'https://www.qbd.com.au/img/products/0/9780733637858.jpg',
                  onTapImage: (){print('tap Image');},
                  onTapSave: (){print('tap save');}
              ),
            RecommendIntroduction(
                title: 'Where The Trees Were',
                author: 'Inga Simpson',
                pages: 288,
                imgSrc: 'https://www.qbd.com.au/img/products/0/9780733637858.jpg',
                onTapImage: (){print('tap Image');},
                onTapSave: (){print('tap save');}
            ),
            RecommendIntroduction(
                title: 'Where The Trees Were',
                author: 'Inga Simpson',
                pages: 288,
                imgSrc: 'https://www.qbd.com.au/img/products/0/9780733637858.jpg',
                onTapImage: (){print('tap Image');},
                onTapSave: (){print('tap save');}
            ),
            RecommendIntroduction(
                title: 'Where The Trees Were',
                author: 'Inga Simpson',
                pages: 288,
                imgSrc: 'https://www.qbd.com.au/img/products/0/9780733637858.jpg',
                onTapImage: (){print('tap Image');},
                onTapSave: (){print('tap save');}
            ),
            RecommendIntroduction(
                title: 'Where The Trees Were',
                author: 'Inga Simpson',
                pages: 288,
                imgSrc: 'https://www.qbd.com.au/img/products/0/9780733637858.jpg',
                onTapImage: (){print('tap Image');},
                onTapSave: (){print('tap save');}
            ),
          ])
        ],
      ),
    );
  }
}
