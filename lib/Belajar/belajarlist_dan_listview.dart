import 'package:flutter/material.dart';

class BelajarListAndListview extends StatefulWidget {
  const BelajarListAndListview({Key? key}) : super(key: key);

  @override
  State<BelajarListAndListview> createState() => _BelajarListAndListviewState();
}

class _BelajarListAndListviewState extends State<BelajarListAndListview> {
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
          ),
          leading: BackButton(
            color: Colors.black,
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
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
                  child: const Text('tombol hapus')),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      widgetku.removeLast();
                      counter--;
                    });
                  },
                  child: const Text('tombol tambah')),
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
