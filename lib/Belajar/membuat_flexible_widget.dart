import 'package:flutter/material.dart';

class BelajarFlexibleWidget extends StatelessWidget {
  const BelajarFlexibleWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: const Center(child: Text('CTE1')),
              leading: BackButton(
                color: Colors.black,
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
            body: Column(
              children: <Widget>[
                Flexible(
                  child: Row(children: <Widget>[
                    Flexible(flex: 1, child: Container(color: Colors.amber)),
                    Flexible(
                        flex: 1,
                        child: Container(
                          color: Colors.purple,
                          margin: const EdgeInsets.all(5),
                        )),
                    Flexible(flex: 1, child: Container(color: Colors.cyan)),
                  ]),
                ),
                Flexible(flex: 2, child: Container(color: Colors.red)),
                Flexible(flex: 1, child: Container(color: Colors.green)),
              ],
            )));
  }
}
