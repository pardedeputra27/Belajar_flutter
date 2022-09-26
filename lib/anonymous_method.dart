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
  String messeges = 'Ini adalah text ketika di ketik';
  // void klik() {
  //   setState(() {
  //     messeges = 'tomobol sudah ditekan';
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Anonymous Method'),
          ),
          body: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(messeges),
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          messeges = 'apasih';
                        });
                      },
                      child: const Text('Tekan Saya'))
                ]),
          )),
    );
  }
}
