import 'package:flutter/material.dart';

class BelajarMediaQuery extends StatefulWidget {
  const BelajarMediaQuery({Key? key}) : super(key: key);

  @override
  State<BelajarMediaQuery> createState() => _BelajarMediaQueryState();
}

class _BelajarMediaQueryState extends State<BelajarMediaQuery> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Latihan Media Query'),
            leading: BackButton(
              color: Colors.black,
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
          body: (MediaQuery.of(context).orientation == Orientation.portrait)
              ? Column(
                  children: generateWidget(),
                )
              : Row(
                  children: generateWidget(),
                )),
    );
  }
}

List<Widget> generateWidget() {
  return <Widget>[
    Container(width: 100, height: 100, color: Colors.red),
    Container(width: 100, height: 100, color: Colors.blue),
    Container(width: 100, height: 100, color: Colors.grey),
    Container(width: 100, height: 100, color: Colors.yellow),
  ];
}
