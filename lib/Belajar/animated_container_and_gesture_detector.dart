import 'package:flutter/material.dart';
import 'dart:math';

class BelajarAnimatedAndGesture extends StatefulWidget {
  const BelajarAnimatedAndGesture({Key? key}) : super(key: key);

  @override
  State<BelajarAnimatedAndGesture> createState() =>
      _BelajarAnimatedAndGestureState();
}

class _BelajarAnimatedAndGestureState extends State<BelajarAnimatedAndGesture> {
  Random random = Random();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('CTE')),
          leading: BackButton(
            color: Colors.black,
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: Center(
          child: GestureDetector(
            onTap: () {
              setState(() {});
            },
            child: AnimatedContainer(
              color: Color.fromARGB(
                  255, random.nextInt(256), random.nextInt(256), 256),
              duration: const Duration(seconds: 1),
              width: 50.0 + random.nextInt(101),
              height: 50.0 + random.nextInt(101),
            ),
          ),
        ),
      ),
    );
  }
}
