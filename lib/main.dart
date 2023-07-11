import 'package:flutter/material.dart';
import 'package:flutter_widgets/views/widgets/about_dialog.dart';
import 'package:flutter_widgets/views/widgets/about_listtile.dart';
import 'package:flutter_widgets/views/widgets/absorbpointer.dart';
import 'package:flutter_widgets/views/widgets/alert_dialogue.dart';
import 'package:flutter_widgets/views/widgets/align.dart';
import 'package:flutter_widgets/views/widgets/animated%20align.dart';
import 'package:flutter_widgets/views/widgets/animated_Positioned.dart';
import 'package:flutter_widgets/views/widgets/animated_builder.dart';
import 'package:flutter_widgets/views/widgets/animated_container.dart';
import 'package:flutter_widgets/views/widgets/animated_cross_fade.dart';
import 'package:flutter_widgets/views/widgets/animated_default_textstyle.dart';
import 'package:flutter_widgets/views/widgets/animated_icon.dart';
import 'package:flutter_widgets/views/widgets/animated_list.dart';
import 'package:flutter_widgets/views/widgets/animated_modal_barriar.dart';
import 'package:flutter_widgets/views/widgets/animated_opacity.dart';
import 'package:flutter_widgets/views/widgets/animated_padding.dart';
import 'package:flutter_widgets/views/widgets/animated_phyical_model.dart';
import 'package:flutter_widgets/views/widgets/animated_rotation.dart';
import 'package:flutter_widgets/views/widgets/animated_size.dart';
import 'package:flutter_widgets/views/widgets/animated_switcher.dart';
import 'package:get/get.dart';

void main(){
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(useMaterial3: true),
      darkTheme: ThemeData.dark(useMaterial3: true),
      themeMode: ThemeMode.system,
      initialRoute: "/animated_switcher",
      getPages: [
        GetPage(name: "/", page: () =>const About_Dialog(),),
        GetPage(name: "/About_ListTile", page: () =>const About_ListTile(),),
        GetPage(name: "/absorb_pointer", page: () =>const absorbpointer(),),
        GetPage(name: "/Alert_Dialogue", page: () =>const Alert_Dialogue(),),
        GetPage(name: "/animated_align", page: () =>const animated_align(),),
        GetPage(name: "/align", page: () =>const align(),),
        GetPage(name: "/animated_builder", page: () =>const animated_builder(),),
        GetPage(name: "/animated_container", page: () =>const animated_container(),),
        GetPage(name: "/animated_cross_fade", page: () =>const animated_cross_fade(),),
        GetPage(name: "/animated_default_textstyle", page: () =>const animated_default_textstyle(),),
        GetPage(name: "/animated_icon", page: () =>const animated_icon(),),
        GetPage(name: "/animated_List", page: () =>const animated_List(),),
        GetPage(name: "/animated_modal_barrier", page: () =>const animated_modal_barrier(),),
        GetPage(name: "/animated_opacity", page: () =>const animated_opacity(),),
        GetPage(name: "/animated_padding", page: () =>const animated_padding(),),
        GetPage(name: "/animated_physical_model", page: () =>const animated_phyical_model(),),
        GetPage(name: "/animated_positioned", page: () =>const animated_positioned(),),
        GetPage(name: "/animated_rotation", page: () =>const animted_rotation(),),
        GetPage(name: "/animated_size", page: () =>const animted_size(),),
        GetPage(name: "/animated_switcher", page: () =>const animted_switcher(),),
      ],
    )
  );
}