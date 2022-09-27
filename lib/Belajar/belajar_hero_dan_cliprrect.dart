import 'package:flutter/material.dart';

class BelajarHeroAndClipRRect extends StatefulWidget {
  const BelajarHeroAndClipRRect({Key? key}) : super(key: key);

  @override
  State<BelajarHeroAndClipRRect> createState() =>
      _BelajarHeroAndClipRRectState();
}

class _BelajarHeroAndClipRRectState extends State<BelajarHeroAndClipRRect> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.lightBlue[50],
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: const Text("Latihan HeroAndClipRRect"),
          leading: BackButton(
            color: Colors.white,
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: Hero(
          tag: 'luffy',
          child: Container(
            margin: const EdgeInsets.all(5),
            width: 100,
            height: 100,
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const PerbesarGambar()),
                );
              },
              child: ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: const Image(
                  image: AssetImage('assets/luffy.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class PerbesarGambar extends StatelessWidget {
  const PerbesarGambar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.pink[50],
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: const Text("Latihan HeroAndClipRRect"),
          leading: BackButton(
            color: Colors.white,
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: Center(
          child: Hero(
            tag: 'luffy',
            child: Container(
              margin: const EdgeInsets.all(5),
              width: 200,
              height: 200,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: const Image(
                  image: AssetImage('assets/luffy.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
