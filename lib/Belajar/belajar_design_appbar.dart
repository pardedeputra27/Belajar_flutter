import 'package:flutter/material.dart';

class BelajarDesignAppBar extends StatelessWidget {
  const BelajarDesignAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: BackButton(
            color: Colors.black,
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: const Text("Latihan Appbar Design"),
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.exit_to_app)),
            IconButton(onPressed: () {}, icon: const Icon(Icons.settings)),
            IconButton(onPressed: () {}, icon: const Icon(Icons.list)),
          ],
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                  colors: [Color(0xff0096ff), Color(0xff6610f2)],
                  begin: FractionalOffset.topLeft,
                  end: FractionalOffset.bottomRight),
              image: DecorationImage(
                  image: AssetImage('assets/background-white-sand.jpg'),
                  fit: BoxFit.none,
                  repeat: ImageRepeat.repeat,
                  opacity: 120),
            ),
          ),
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              margin: const EdgeInsets.only(bottom: 5),
              child: const Text(
                'kata kunci untuk membuat appbar',
                style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    letterSpacing: 2),
              ),
            ),
            const Text(
              'leading,title,actions,flexiblespace',
              style: TextStyle(
                color: Colors.brown,
                fontFamily: 'pacifio',
                letterSpacing: 2,
                fontSize: 12,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
              ),
            ),
          ],
        )),
      ),
    );
  }
}
