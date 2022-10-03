import 'package:flutter/material.dart';

//ini untuk access link
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_application_2/api/post.dart';

class BelajarPost extends StatefulWidget {
  const BelajarPost({Key? key}) : super(key: key);

  @override
  State<BelajarPost> createState() => _BelajarPostState();
}

class _BelajarPostState extends State<BelajarPost> {
  PostResult? postResult;
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _controllerName = TextEditingController();
  final TextEditingController _controllerJob = TextEditingController();
  final Uri _url = Uri.parse('https://reqres.in/api/users');

  Future<void> _launchMyURL() async {
    if (!await launchUrl(_url)) {
      throw 'Could not launch $_url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('POST Demo')),
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
              'Post',
              style: TextStyle(
                  fontFamily: 'Aquarius',
                  fontSize: 25,
                  decoration: TextDecoration.overline,
                  color: Colors.amber,
                  letterSpacing: 10,
                  decorationThickness: 2.85,
                  decorationStyle: TextDecorationStyle.wavy),
            ),
            InkWell(
              onTap: () => _launchMyURL(),
              child: const Text(
                'https://reqres.in/api/users',
                style: TextStyle(
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
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter some text';
                        }
                        return null;
                      },
                      controller: _controllerName,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)),
                        labelText: 'Input Name',
                        icon: const Icon(Icons.people),
                        prefix: const Text('Name : '),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(10, 5, 10, 5),
                    child: TextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter some text';
                        }
                        return null;
                      },
                      controller: _controllerJob,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)),
                        labelText: 'Input job',
                        icon: const Icon(Icons.badge),
                        prefix: const Text('Job : '),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  PostResult.connectToApi(
                          _controllerName.text, _controllerJob.text)
                      .then((value) {
                    setState(() {
                      postResult = value;
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
              (postResult != null)
                  ? "name : ${postResult!.name} ,job : ${postResult!.job} , id : ${postResult!.id} , Created At : ${postResult!.createdAt}"
                  : "No Data",
              textAlign: TextAlign.center,
            )
          ],
        )),
      ),
    );
  }
}
