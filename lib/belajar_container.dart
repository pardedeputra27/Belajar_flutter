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
          title: const Text("Latihan Container"),
        ),
        body: Container(
          color: Colors.yellow,
          // margin: EdgeInsets.all(12),
          //margin: EdgeInsets.only(left: 10, top: 10),
          margin: const EdgeInsets.fromLTRB(5, 10, 5, 10),
          padding: const EdgeInsets.all(10),
          child: Container(
            //color: Colors.blue,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: const LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: <Color>[
                    Colors.red,
                    Colors.green,
                    Colors.blue,
                  ]),
            ),
            // margin: EdgeInsets.all(20),
          ),
        ),
      ),
    );
  }
}
