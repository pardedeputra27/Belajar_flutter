import 'package:flutter/material.dart';
import 'package:flutter_application_2/Belajar/animated_container_and_gesture_detector.dart';
import 'package:flutter_application_2/Belajar/anonymous_method.dart';
import 'package:flutter_application_2/Belajar/balajar_clip_path.dart';
import 'package:flutter_application_2/Belajar/belajar_button_gradiasi.dart';
import 'package:flutter_application_2/Belajar/belajar_card.dart';
import 'package:flutter_application_2/Belajar/belajar_container.dart';
import 'package:flutter_application_2/Belajar/belajar_costum_card.dart';
import 'package:flutter_application_2/Belajar/belajar_design_appbar.dart';
import 'package:flutter_application_2/Belajar/belajar_fontstyle.dart';
import 'package:flutter_application_2/Belajar/belajar_hero_dan_cliprrect.dart';
import 'package:flutter_application_2/Belajar/belajar_image.dart';
import 'package:flutter_application_2/Belajar/belajar_media_query.dart';
import 'package:flutter_application_2/Belajar/belajar_post.dart';
import 'package:flutter_application_2/Belajar/belajar_qr_code.dart';
import 'package:flutter_application_2/Belajar/belajar_row_dan_column.dart';
import 'package:flutter_application_2/Belajar/belajar_sound.dart';
import 'package:flutter_application_2/Belajar/belajar_spacer.dart';
import 'package:flutter_application_2/Belajar/belajar_statefull.dart';
import 'package:flutter_application_2/Belajar/belajar_textfield.dart';
import 'package:flutter_application_2/Belajar/belajarlist_dan_listview.dart';
import 'package:flutter_application_2/Belajar/draggable.dart';
import 'package:flutter_application_2/Belajar/login_page.dart';
import 'package:flutter_application_2/Belajar/membuat_flexible_widget.dart';
import 'package:flutter_application_2/Belajar/stack_and_align.dart';
import 'package:flutter_application_2/tabbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        routes: {
          '/': (context) => const FirstRoutes(),
          '/row': (context) => const BelajarRowAndColumn(),
          '/container': (context) => const BelajarContainer(),
          '/statefull': (context) => const BelajarStatefull(),
          '/anynomous': (context) => const BelajarAnonymousMethod(),
          '/textStyle': (context) => const BelajarTextStyle(),
          '/list': (context) => const BelajarListAndListview(),
          '/animated': (context) => const BelajarAnimatedAndGesture(),
          '/flexible': (context) => const BelajarFlexibleWidget(),
          '/stack': (context) => const BelajarStack(),
          '/image': (context) => const BelajarImage(),
          '/spacer': (context) => const BelajarSpacer(),
          '/draggable': (context) => const BelajarDraggable(),
          '/card': (context) => const BelajarCard(),
          '/textField': (context) => const BelajarTextField(),
          '/mediaQuery': (context) => const BelajarMediaQuery(),
          '/inkwell': (context) => const BelajarInkwell(),
          '/costumCard': (context) => const BelajarCostumCard(),
          '/loginPage': (context) => const BelajarLoginPage(),
          '/hero': (context) => const BelajarHeroAndClipRRect(),
          '/appbar': (context) => const BelajarDesignAppBar(),
          '/qrCode': (context) => const BelajarQrCode(),
          '/sound': (context) => const BelajarSound(),
          '/clipPath': (context) => const BelajarClipPath(),
          '/post': (context) => const BelajarPost(),
        },
      ),
    );
  }
}
