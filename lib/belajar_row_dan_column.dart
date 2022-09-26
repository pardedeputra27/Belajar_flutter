import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Latihan Row dan Column"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Text('Text 1'),
            const Text('Text 2'),
            const Text('Text 3'),
            const Text('Text 4'),
            Row(
              children: const <Widget>[
                Text('Hallo1'),
                Text('Hallo2'),
                Text('Hallo3'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
