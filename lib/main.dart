import 'package:flutter/material.dart';
import 'package:flutter_widgets/views/widgets/Circular_Progress_Indicator.dart';
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
import 'package:flutter_widgets/views/widgets/appbar.dart';
import 'package:flutter_widgets/views/widgets/aspect_ration.dart';
import 'package:flutter_widgets/views/widgets/autocomplate.dart';
import 'package:flutter_widgets/views/widgets/banner_widget.dart';
import 'package:flutter_widgets/views/widgets/baseline.dart';
import 'package:flutter_widgets/views/widgets/black_drop.dart';
import 'package:flutter_widgets/views/widgets/block_semantics.dart';
import 'package:flutter_widgets/views/widgets/bottom_navigationbar.dart';
import 'package:flutter_widgets/views/widgets/bottom_sheet.dart';
import 'package:flutter_widgets/views/widgets/buttonbar.dart';
import 'package:flutter_widgets/views/widgets/builder.dart';
import 'package:flutter_widgets/views/widgets/card_widget.dart';
import 'package:flutter_widgets/views/widgets/center.dart';
import 'package:flutter_widgets/views/widgets/check_box_widget.dart';
import 'package:flutter_widgets/views/widgets/checkbox_listtile.dart';
import 'package:flutter_widgets/views/widgets/chip_widget.dart';
import 'package:flutter_widgets/views/widgets/choice_chip_widget.dart';
import 'package:flutter_widgets/views/widgets/circle_avatar_widget.dart';
import 'package:flutter_widgets/views/widgets/clip_path_widget.dart';
import 'package:flutter_widgets/views/widgets/clipoval_widget.dart';
import 'package:get/get.dart';

void main(){
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(useMaterial3: true),
      darkTheme: ThemeData.dark(useMaterial3: true),
      themeMode: ThemeMode.system,
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
        GetPage(name: "/app_Bar", page: () =>const app_Bar(),),
        GetPage(name: "/aspect_ratio", page: () =>const aspect_ratio(),),
        GetPage(name: "/Auto_complete", page: () =>const Auto_complete(),),
        GetPage(name: "/black_drop", page: () =>const black_drop(),),
        GetPage(name: "/banner_widget", page: () =>const banner_widget(),),
        GetPage(name: "/baseline_widget", page: () =>const baseline_widget(),),
        GetPage(name: "/block_semantics", page: () =>const block_semantics(),),
        GetPage(name: "/bottom_navigation-bar", page: () =>const bottom_navigationbar(),),
        GetPage(name: "/bottom_sheet", page: () =>const bottom_sheet(),),
        GetPage(name: "/builder", page: () =>const builder(),),
        GetPage(name: "/button_bar", page: () =>const button_bar(),),
        GetPage(name: "/card", page: () =>const card(),),
        GetPage(name: "/center_widget", page: () =>const center_widget(),),
        GetPage(name: "/checkbox_widget", page: () =>const checkbox_widget(),),
        GetPage(name: "/checkbox_ListTile_widget", page: () =>const checkbox_ListTile_widget(),),
        GetPage(name: "/Chip_Widget", page: () =>const Chip_Widget(),),
        GetPage(name: "/choice_chip_widget", page: () =>const choice_chip_widget(),),
        GetPage(name: "/circle_avatar_widget", page: () =>const circle_avatar_widget(),),
        GetPage(name: "/Circular_Progress_Indicator_widget", page: () =>const Circular_Progress_Indicator_widget(),),
        GetPage(name: "/clipoval_widget", page: () =>const clipoval_widget(),),
        GetPage(name: "/clippath_widget", page: () =>const clippath_widget(),),
      ],
      initialRoute: "/clippath_widget",
    )
  );
}