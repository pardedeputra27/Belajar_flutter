import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text(
              'Citra Tubindo Engineering',
              style: TextStyle(
                  fontFamily: 'Aquarius',
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.underline,
                  decorationThickness: 2,
                  decorationStyle: TextDecorationStyle.dotted),
            ),
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Center(
                child: Text(
              'hore',
              style: TextStyle(
                  fontFamily: 'Aquarius',
                  fontSize: 25,
                  decoration: TextDecoration.overline,
                  color: Colors.amber,
                  decorationThickness: 2.85,
                  decorationStyle: TextDecorationStyle.wavy),
            )),
          ],
        ),
      ),
    );
  }
}
