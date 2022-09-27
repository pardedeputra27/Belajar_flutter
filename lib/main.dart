import 'package:flutter/material.dart';
import 'package:flutter_application_2/Belajar/animated_container_and_gesture_detector.dart';
import 'package:flutter_application_2/Belajar/anonymous_method.dart';
import 'package:flutter_application_2/Belajar/belajar_button_gradiasi.dart';
import 'package:flutter_application_2/Belajar/belajar_card.dart';
import 'package:flutter_application_2/Belajar/belajar_container.dart';
import 'package:flutter_application_2/Belajar/belajar_costum_card.dart';
import 'package:flutter_application_2/Belajar/belajar_design_appbar.dart';
import 'package:flutter_application_2/Belajar/belajar_fontstyle.dart';
import 'package:flutter_application_2/Belajar/belajar_hero_dan_cliprrect.dart';
import 'package:flutter_application_2/Belajar/belajar_image.dart';
import 'package:flutter_application_2/Belajar/belajar_media_query.dart';
import 'package:flutter_application_2/Belajar/belajar_row_dan_column.dart';
import 'package:flutter_application_2/Belajar/belajar_spacer.dart';
import 'package:flutter_application_2/Belajar/belajar_statefull.dart';
import 'package:flutter_application_2/Belajar/belajar_textfield.dart';
import 'package:flutter_application_2/Belajar/belajarlist_dan_listview.dart';
import 'package:flutter_application_2/Belajar/draggable.dart';
import 'package:flutter_application_2/Belajar/login_page.dart';
import 'package:flutter_application_2/Belajar/membuat_flexible_widget.dart';
import 'package:flutter_application_2/Belajar/stack_and_align.dart';

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
        },
      ),
    );
  }
}

Container containerList(BuildContext context, String text, String route) {
  return Container(
      margin: const EdgeInsets.only(top: 5, left: 20, right: 20),
      child: ElevatedButton(
        child: Text(text),
        onPressed: () {
          Navigator.pushNamed(context, route);
        },
      ));
}

class FirstRoutes extends StatelessWidget {
  const FirstRoutes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          bottom: const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.computer)),
              Tab(icon: Icon(Icons.safety_check)),
              Tab(icon: Icon(Icons.directions_bike)),
            ],
          ),
          title: const Text('BeLajar dari Erico dermawan'),
        ),
        body: TabBarView(children: [
          ListView(children: [
            Center(
                child: Container(
              margin: const EdgeInsets.only(top: 10, bottom: 10),
              child: const Text(
                'Ini adalah hasil pembelajaran saya',
                style: TextStyle(
                    color: Colors.green, fontSize: 20, letterSpacing: 2),
              ),
            )),
            containerList(context, 'Row and Column', '/row'),
            containerList(context, 'Container', '/container'),
            containerList(context, 'Statefull', '/statefull'),
            containerList(context, 'Anynomous Method', '/anynomous'),
            containerList(context, 'Text Style', '/textStyle'),
            containerList(context, 'List and ListView', '/list'),
            containerList(context, 'Animated and Gesture', '/animated'),
            containerList(context, 'Flexible', '/flexible'),
            containerList(context, 'Stack and Align', '/stack'),
            containerList(context, 'Image', '/image'),
            containerList(context, 'Spacer', '/spacer'),
            containerList(context, 'Draggable', '/draggable'),
            containerList(context, 'Card', '/card'),
            containerList(context, 'Text Field', '/textField'),
            containerList(context, 'Media Query', '/mediaQuery'),
            containerList(context, 'inkWell (buttonSendiri)', '/inkwell'),
            containerList(context, 'CostumCard', '/costumCard'),
            containerList(context, 'Login Page', '/loginPage'),
            containerList(context, 'HeroAndClipRRect', '/hero'),
            containerList(context, 'Appbar design', '/appbar'),
          ]),
          const Icon(
            Icons.safety_check,
            size: 200,
          ),
          const Icon(
            Icons.directions_bike,
            size: 200,
          ),
        ]),
      ),
    );
  }
}
