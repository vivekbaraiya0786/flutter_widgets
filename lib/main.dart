import 'package:flutter/material.dart';
import 'package:flutter_widgets/views/widgets/about_dialog.dart';
import 'package:flutter_widgets/views/widgets/about_listtile.dart';
import 'package:flutter_widgets/views/widgets/absorbpointer.dart';
import 'package:flutter_widgets/views/widgets/alert_dialogue.dart';
import 'package:flutter_widgets/views/widgets/animated%20align.dart';
import 'package:flutter_widgets/views/widgets/animated_builder.dart';
import 'package:flutter_widgets/views/widgets/animated_container.dart';
import 'package:flutter_widgets/views/widgets/animated_cross_fade.dart';
import 'package:flutter_widgets/views/widgets/animated_default_textstyle.dart';
import 'package:get/get.dart';

void main(){
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(useMaterial3: true),
      darkTheme: ThemeData.dark(useMaterial3: true),
      themeMode: ThemeMode.system,
      initialRoute: "/animated_default_textstyle",
      getPages: [
        GetPage(name: "/", page: () =>const About_Dialog(),),
        GetPage(name: "/About_ListTile", page: () =>const About_ListTile(),),
        GetPage(name: "/absorb_pointer", page: () =>const absorbpointer(),),
        GetPage(name: "/Alert_Dialogue", page: () =>const Alert_Dialogue(),),
        GetPage(name: "/animated_align", page: () =>const animated_align(),),
        GetPage(name: "/animated_builder", page: () =>const animated_builder(),),
        GetPage(name: "/animated_container", page: () =>const animated_container(),),
        GetPage(name: "/animated_cross_fade", page: () =>const animated_cross_fade(),),
        GetPage(name: "/animated_default_textstyle", page: () =>const animated_default_textstyle(),),
      ],
    )
  );
}