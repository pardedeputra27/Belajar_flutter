import 'package:flutter/material.dart';

class BelajarSpacer extends StatelessWidget {
  const BelajarSpacer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('Belajar Spacer')),
          leading: BackButton(
            color: Colors.black,
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: Center(
          child: Row(
            //mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const Spacer(flex: 1),
              Container(width: 50, height: 50, color: Colors.blue),
              const Spacer(flex: 2),
              Container(width: 50, height: 50, color: Colors.red),
              const Spacer(flex: 2),
              Container(width: 50, height: 50, color: Colors.pink),
              const Spacer(flex: 1)
            ],
          ),
        ),
      ),
    );
  }
}
