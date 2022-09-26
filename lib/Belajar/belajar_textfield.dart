import 'package:flutter/material.dart';

class BelajarTextField extends StatefulWidget {
  const BelajarTextField({Key? key}) : super(key: key);

  @override
  State<BelajarTextField> createState() => _BelajarTextFieldState();
}

class _BelajarTextFieldState extends State<BelajarTextField> {
  final TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Latihan Text Filed'),
          leading: BackButton(
            color: Colors.black,
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: Container(
          margin: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextField(
                controller: _controller,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
                    labelText: 'Input Nama',
                    icon: const Icon(Icons.adb),
                    prefix: const Text('Nama : ')),
                maxLength: 10,

                //obscureText: true,
                onChanged: (value) {
                  setState(() {});
                },
              ),
              Text(_controller.text),
            ],
          ),
        ),
      ),
    );
  }
}
