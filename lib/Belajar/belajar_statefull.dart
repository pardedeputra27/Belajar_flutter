import 'package:flutter/material.dart';

class BelajarStatefull extends StatefulWidget {
  const BelajarStatefull({Key? key}) : super(key: key);

  @override
  State<BelajarStatefull> createState() => _BelajarStatefullState();
}

class _BelajarStatefullState extends State<BelajarStatefull> {
  int number = 0;
  void tekanTombol() {
    setState(() {
      number += 2;
      //number++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Belajar Statefull'),
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
              Text(
                number.toString(),
                style: TextStyle(fontSize: 10 + number.toDouble()),
              ),
              ElevatedButton(
                  onPressed: tekanTombol, child: const Text('Tambah'))
            ],
          ),
        ),
      ),
    );
  }
}
