import 'package:flutter/material.dart';

class BelajarInkwell extends StatefulWidget {
  const BelajarInkwell({Key? key}) : super(key: key);

  @override
  State<BelajarInkwell> createState() => _BelajarInkwellState();
}

class _BelajarInkwellState extends State<BelajarInkwell> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Latihan inkwell'),
          leading: BackButton(
            color: Colors.black,
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                  onPressed: (() {}),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.green),
                    shape: MaterialStateProperty.all(const StadiumBorder()),
                  ),
                  child: const Text('Elevetebutton')),
              Container(
                width: 150,
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient: const LinearGradient(
                    colors: [
                      Colors.red,
                      Colors.yellow,
                      Colors.green,
                      Colors.redAccent
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
                child: Material(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.transparent,
                  child: InkWell(
                    splashColor: Colors.greenAccent,
                    onTap: (() {}),
                    child: const Center(
                        child: Text(
                      'Inkwell',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    )),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
