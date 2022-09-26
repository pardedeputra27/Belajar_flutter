import 'package:flutter/material.dart';

class BelajarImage extends StatelessWidget {
  const BelajarImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('CTE')),
          leading: BackButton(
            color: Colors.black,
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: Center(
          child: Container(
            width: 200,
            height: 200,
            color: Colors.blue,
            padding: const EdgeInsets.all(5),
            child: const Image(
              image: AssetImage(
                  //NetworkImage jika ingin menggunakan link
                  "assets/luffy.jpg"),
              fit: BoxFit.contain,
              repeat: ImageRepeat.repeatY,
            ),
          ),
        ),
      ),
    );
  }
}
