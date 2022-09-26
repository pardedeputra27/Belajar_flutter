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
  List<Widget> widgetku = [];
  int counter = 0;

  // _MyAppState() {
  //   // ini adalah constructor state
  //   for (int i = 0; i <= 20; i++) {
  //     widgetku.add(Text(
  //       "Data saya ke-$i",
  //       style: const TextStyle(fontSize: 30),
  //     ));
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            title: const Center(
          child: Text('CTE'),
        )),
        body: ListView(children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      widgetku.add(Text("Data Ke-$counter",
                          style: const TextStyle(fontSize: 30)));
                      counter++;
                    });
                  },
                  child: const Text('tombol pertama')),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      widgetku.removeLast();
                      counter--;
                    });
                  },
                  child: const Text('tombol Kedua')),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: widgetku,
          )
        ]),
      ),
    );
  }
}
