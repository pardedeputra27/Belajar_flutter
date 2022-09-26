import 'package:flutter/material.dart';

class BelajarRowAndColumn extends StatelessWidget {
  const BelajarRowAndColumn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Latihan Row dan Column"),
          leading: BackButton(
            color: Colors.black,
            onPressed: () {
              Navigator.pop(context);
            },
          ),
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
