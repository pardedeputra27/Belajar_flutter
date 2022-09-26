import 'package:flutter/material.dart';

class BelajarTextStyle extends StatefulWidget {
  const BelajarTextStyle({Key? key}) : super(key: key);

  @override
  State<BelajarTextStyle> createState() => _BelajarTextStyleState();
}

class _BelajarTextStyleState extends State<BelajarTextStyle> {
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
          leading: BackButton(
            color: Colors.black,
            onPressed: () {
              Navigator.pop(context);
            },
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
