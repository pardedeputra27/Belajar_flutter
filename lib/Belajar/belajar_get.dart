import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_2/api/get.dart';

//ini untuk access link
import 'package:url_launcher/url_launcher.dart';

class BelajarGet extends StatefulWidget {
  const BelajarGet({Key? key}) : super(key: key);

  @override
  State<BelajarGet> createState() => _BelajarGetState();
}

class _BelajarGetState extends State<BelajarGet> {
  GetResult? getResult;
  final _formKey = GlobalKey<FormState>();
  String id = '1';
  final TextEditingController _controllerId = TextEditingController();

  Future<void> _launchMyURL() async {
    final Uri url = Uri.parse('https://reqres.in/api/users/$id');
    if (!await launchUrl(url)) {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('latihan GET')),
          leading: BackButton(
            color: Colors.black,
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Text(
              'Get',
              style: TextStyle(
                  fontFamily: 'Aquarius',
                  fontSize: 25,
                  decoration: TextDecoration.overline,
                  color: Colors.amber,
                  letterSpacing: 4,
                  decorationThickness: 2.85,
                  decorationStyle: TextDecorationStyle.wavy),
            ),
            InkWell(
              onTap: () => _launchMyURL(),
              child: Text(
                'https://reqres.in/api/users/$id',
                style: const TextStyle(
                    decoration: TextDecoration.underline, color: Colors.blue),
              ),
            ),
            Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    margin: const EdgeInsets.fromLTRB(10, 5, 10, 5),
                    child: TextFormField(
                      autofocus: true,
                      maxLength: 2,
                      inputFormatters: <TextInputFormatter>[
                        FilteringTextInputFormatter(RegExp(r'[0-9]'),
                            allow: true)
                      ],
                      // keyboardType: TextInputType.number,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter ID Value';
                        }
                        return null;
                      },
                      controller: _controllerId,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)),
                        labelText: 'Input ID',
                        icon: const Icon(Icons.badge),
                        prefix: const Text('ID : '),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  GetResult.connectToApi(_controllerId.text).then((value) {
                    setState(() {
                      id = _controllerId.text;
                      getResult = value;
                    });
                  });
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Processing Data')),
                  );
                }
              },
              child: const Text('SUBMIT'),
            ),
            Text(
              (getResult != null)
                  ? "Name : ${getResult!.firstName} ${getResult!.lastName} , id : ${getResult!.id} , avartar :  ${getResult!.avatar} , email : ${getResult!.email}   "
                  : "No Data",
              textAlign: TextAlign.center,
            )
          ],
        )),
      ),
    );
  }
}
