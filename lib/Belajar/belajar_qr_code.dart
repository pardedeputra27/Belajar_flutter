import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class BelajarQrCode extends StatelessWidget {
  const BelajarQrCode({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Latihan QR Code'),
          leading: BackButton(
            color: Colors.black,
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'This Qr code is :',
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic),
              ),
              const Text(
                'https://github.com/pardedeputra27/Belajar_flutter',
                style: TextStyle(color: Colors.blue),
              ),
              QrImage(
                data: "https://github.com/pardedeputra27/Belajar_flutter",
                version: QrVersions.auto,
                backgroundColor: Colors.transparent,
                foregroundColor: Colors.black,
                errorCorrectionLevel: QrErrorCorrectLevel.H,
                //padding: EdgeInsets.all(0),
                size: 200.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
