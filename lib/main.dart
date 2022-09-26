import 'package:flutter/material.dart';
import 'package:flutter_application_2/Belajar/animated_container_and_gesture_detector.dart';
import 'package:flutter_application_2/Belajar/anonymous_method.dart';
import 'package:flutter_application_2/Belajar/belajar_card.dart';
import 'package:flutter_application_2/Belajar/belajar_container.dart';
import 'package:flutter_application_2/Belajar/belajar_fontstyle.dart';
import 'package:flutter_application_2/Belajar/belajar_image.dart';
import 'package:flutter_application_2/Belajar/belajar_media_query.dart';
import 'package:flutter_application_2/Belajar/belajar_row_dan_column.dart';
import 'package:flutter_application_2/Belajar/belajar_spacer.dart';
import 'package:flutter_application_2/Belajar/belajar_statefull.dart';
import 'package:flutter_application_2/Belajar/belajar_textfield.dart';
import 'package:flutter_application_2/Belajar/belajarlist_dan_listview.dart';
import 'package:flutter_application_2/Belajar/draggable.dart';
import 'package:flutter_application_2/Belajar/membuat_flexible_widget.dart';
import 'package:flutter_application_2/Belajar/stack_and_align.dart';

void main() {
  runApp(const MaterialApp(
    title: 'Navigation Basics',
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Flexible(
          flex: 1,
          child: Text('Belajar Flutter dari erico dermawan'),
        ),
      ),
      body: ListView(children: [
        containerList(context, 'Row and Column', const BelajarRowAndColumn()),
        containerList(context, 'Container', const BelajarContainer()),
        containerList(context, 'Statefull', const BelajarStatefull()),
        containerList(
            context, 'Anynomous Method', const BelajarAnonymousMethod()),
        containerList(context, 'Text Style', const BelajarTextStyle()),
        containerList(
            context, 'List and ListView', const BelajarListAndListview()),
        containerList(
            context, 'Animated and Gesture', const BelajarAnimatedAndGesture()),
        containerList(context, 'Flexible', const BelajarFlexibleWidget()),
        containerList(context, 'Stack and Align', const BelajarStack()),
        containerList(context, 'Image', const BelajarImage()),
        containerList(context, 'Spacer', const BelajarSpacer()),
        containerList(context, 'Draggable', const BelajarDraggable()),
        containerList(context, 'Card', const BelajarCard()),
        containerList(context, 'Text Field', const BelajarTextField()),
        containerList(context, 'Media Query', const BelajarMediaQuery()),
      ]),
    );
  }
}

Container containerList(BuildContext context, String text, Widget route) {
  return Container(
      margin: const EdgeInsets.only(top: 5, left: 20, right: 20),
      child: ElevatedButton(
        child: Text(text),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => route),
          );
        },
      ));
}
