import 'package:flutter/material.dart';

class BelajarCard extends StatelessWidget {
  const BelajarCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Card'),
          leading: BackButton(
            color: Colors.black,
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        backgroundColor: Colors.green,
        body: Container(
          margin: const EdgeInsets.all(10),
          child: ListView(
            children: [
              buildCard(Icons.abc, 'Apa aja'),
              buildCard(Icons.access_time, 'Waktu access'),
              buildCard(Icons.account_box, 'My Account'),
            ],
          ),
        ),
      ),
    );
  }

  Card buildCard(IconData icon, String judul) {
    return Card(
      elevation: 10,
      child: Row(children: [
        Container(margin: const EdgeInsets.all(5), child: Icon(icon)),
        Text(judul),
      ]),
    );
  }
}
