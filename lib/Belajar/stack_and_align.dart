import 'package:flutter/material.dart';

void main() {
  runApp(const BelajarStack());
}

class BelajarStack extends StatelessWidget {
  const BelajarStack({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // catatan
    // Stck itu artinya ditumpuk atau ditimpa
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
        body: Stack(
          children: <Widget>[
            //background
            Column(
              children: <Widget>[
                Flexible(
                  flex: 1,
                  child: Row(children: [
                    Flexible(
                      flex: 1,
                      child: Container(
                        color: Colors.black12,
                      ),
                    ),
                    Flexible(
                        flex: 1,
                        child: Container(
                          color: Colors.white12,
                        )),
                  ]),
                ),
                Flexible(
                    flex: 1,
                    child: Row(children: [
                      Flexible(
                        flex: 1,
                        child: Container(
                          color: Colors.white,
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: Container(
                          color: Colors.black12,
                        ),
                      ),
                    ])),
              ],
            ),
            //list view dengan text
            ListView(
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.all(10),
                  child: const Text(
                    'ini adalah stack kedua',
                    style: TextStyle(fontSize: 40),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(10),
                  child: const Text(
                    'ini adalah stack kedua',
                    style: TextStyle(fontSize: 40),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(10),
                  child: const Text(
                    'ini adalah stack kedua',
                    style: TextStyle(fontSize: 40),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(10),
                  child: const Text(
                    'ini adalah stack kedua',
                    style: TextStyle(fontSize: 40),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(10),
                  child: const Text(
                    'ini adalah stack kedua',
                    style: TextStyle(fontSize: 40),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(10),
                  child: const Text(
                    'ini adalah stack kedua',
                    style: TextStyle(fontSize: 40),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(10),
                  child: const Text(
                    'ini adalah stack kedua',
                    style: TextStyle(fontSize: 40),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(10),
                  child: const Text(
                    'ini adalah stack kedua',
                    style: TextStyle(fontSize: 40),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(10),
                  child: const Text(
                    'ini adalah stack kedua',
                    style: TextStyle(fontSize: 40),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(10),
                  child: const Text(
                    'ini adalah stack kedua',
                    style: TextStyle(fontSize: 40),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(10),
                  child: const Text(
                    'ini adalah stack kedua',
                    style: TextStyle(fontSize: 40),
                  ),
                ),
              ],
            ),
            Align(
              alignment: const Alignment(0, 0.95),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(primary: Colors.amber),
                child: const Text('Submit'),
              ),
            )
            //button tengah dibawah
          ],
        ),
      ),
    );
  }
}
