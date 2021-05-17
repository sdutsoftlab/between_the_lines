import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_between_the_lines/src/core/scaffold/scaffold_widget.dart';
import 'package:flutter_between_the_lines/src/core/theme/theme_main.dart';
import 'package:get/get.dart';

import 'src/service/router/app_router.dart';

void main() => runApp(MainClass());

class MainClass extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([]);
    return GetMaterialApp(
      title: '字里行间',
      theme: ThemeData(
          primaryColor: ThemeMain.colorTheme,
          highlightColor: Colors.transparent,
          splashColor: Colors.transparent),
      getPages: AppRouter.page,
      home: ScaffoldMainClass(),
      debugShowCheckedModeBanner: false,
    );
  }
}
