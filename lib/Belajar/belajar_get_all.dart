import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_2/api/get_all.dart';

//ini untuk access link
import 'package:url_launcher/url_launcher.dart';

class BelajarGetAll extends StatefulWidget {
  const BelajarGetAll({Key? key}) : super(key: key);

  @override
  State<BelajarGetAll> createState() => _BelajarGetAllState();
}

class _BelajarGetAllState extends State<BelajarGetAll> {
  final _formKey = GlobalKey<FormState>();
  String output = '';
  String page = '2';
  final TextEditingController _controllerId = TextEditingController();

  Future<void> _launchMyURL() async {
    final Uri url = Uri.parse('https://reqres.in/api/users?page=$page');
    if (!await launchUrl(url)) {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('latihan GET Per Page')),
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
                'https://reqres.in/api/users/$page',
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
                  User.createUsers(_controllerId.text).then((users) {
                    for (int i = 0; i < users.length; i++) {
                      output = "$output{${users[i].name}}";
                    }
                    setState(() {});
                  });
                }
              },
              child: const Text('SUBMIT'),
            ),
            Text(output),
          ],
        )),
      ),
    );
  }
}
