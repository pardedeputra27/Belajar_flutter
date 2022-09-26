import 'package:flutter/material.dart';

class BelajarAnonymousMethod extends StatefulWidget {
  const BelajarAnonymousMethod({Key? key}) : super(key: key);

  @override
  State<BelajarAnonymousMethod> createState() => _BelajarAnonymousMethodState();
}

class _BelajarAnonymousMethodState extends State<BelajarAnonymousMethod> {
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
            leading: BackButton(
              color: Colors.black,
              onPressed: () {
                Navigator.pop(context);
              },
            ),
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
