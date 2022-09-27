import 'package:flutter/material.dart';

class BelajarLoginPage extends StatelessWidget {
  const BelajarLoginPage({Key? key}) : super(key: key);
  double getSmallDiameter(BuildContext context) =>
      MediaQuery.of(context).size.width * 2 / 3;
  double getBigDiameter(BuildContext context) =>
      MediaQuery.of(context).size.width * 7 / 8;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.grey[200],
          body: Stack(
            children: [
              Positioned(
                right: -getBigDiameter(context) / 3,
                top: -getBigDiameter(context) / 3,
                child: Container(
                  width: getSmallDiameter(context),
                  height: getSmallDiameter(context),
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      gradient: LinearGradient(
                        colors: [Color(0xFFB226B2), Color(0xFFFF60A7)],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      )),
                ),
              ),
              Positioned(
                left: -getBigDiameter(context) / 4,
                top: -getBigDiameter(context) / 4,
                child: Container(
                  width: getSmallDiameter(context),
                  height: getSmallDiameter(context),
                  margin: const EdgeInsets.only(left: 10),
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      gradient: LinearGradient(
                        colors: [Color(0xFFB226B2), Color(0xFFFF4891)],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      )),
                  child: const Center(
                      child: Text(
                    'PUTRA',
                    style: TextStyle(
                        fontFamily: 'Aquarius',
                        fontSize: 30,
                        color: Colors.white,
                        letterSpacing: 2),
                  )),
                ),
              ),
              Positioned(
                right: -getSmallDiameter(context) / 3,
                bottom: -getSmallDiameter(context) / 2,
                child: Container(
                  width: getSmallDiameter(context),
                  height: getSmallDiameter(context),
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color.fromARGB(244, 231, 187, 202),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: ListView(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          color: Colors.grey,
                        ),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      margin: const EdgeInsets.fromLTRB(20, 300, 20, 10),
                      padding: const EdgeInsets.fromLTRB(10, 0, 10, 25),
                      child: Column(children: const <Widget>[
                        TextField(
                          decoration: InputDecoration(
                              icon: Icon(
                                Icons.email_outlined,
                                color: Colors.pinkAccent,
                              ),
                              focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.red)),
                              labelText: 'Email :',
                              labelStyle: TextStyle(color: Colors.purple)),
                        ),
                        TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                              icon: Icon(
                                Icons.vpn_key_outlined,
                                color: Colors.pink,
                              ),
                              focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.red)),
                              labelText: 'Password :',
                              labelStyle: TextStyle(color: Colors.purple)),
                        )
                      ]),
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Container(
                        margin: const EdgeInsets.fromLTRB(0, 0, 20, 20),
                        child: const Text(
                          'forgot password ?',
                          style: TextStyle(color: Colors.purple, fontSize: 11),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(20, 0, 20, 20),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.5,
                              height: 40,
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  gradient: const LinearGradient(
                                      colors: [
                                        Color(0xFFB226B2),
                                        Color(0xFFFF4891)
                                      ],
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter),
                                ),
                                child: Material(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.transparent,
                                  child: InkWell(
                                    borderRadius: BorderRadius.circular(20),
                                    splashColor: Colors.amber,
                                    onTap: (() {}),
                                    child: const Center(
                                      child: Text(
                                        'SIGN IN',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            FloatingActionButton(
                              heroTag: 'fb',
                              mini: true,
                              elevation: 0,
                              onPressed: (() {}),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: const Image(
                                  image: AssetImage("assets/facebook.jpg"),
                                ),
                              ),
                            ),
                            FloatingActionButton(
                              heroTag: 'ig',
                              mini: true,
                              elevation: 0,
                              onPressed: (() {}),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: const Image(
                                    image: AssetImage('assets/instagram.jpg')),
                              ),
                            ),
                          ]),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const <Widget>[
                        Text(
                          "Don't Have Account ? ",
                          style: TextStyle(
                              color: Colors.blueGrey,
                              fontWeight: FontWeight.w500,
                              fontSize: 11),
                        ),
                        Text(
                          "SIGN UP",
                          style: TextStyle(
                              color: Color(0xFFFF4891),
                              fontWeight: FontWeight.w700,
                              fontSize: 11),
                        ),
                      ],
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 30),
                      child: TextButton(
                          onPressed: (() => Navigator.pop(context)),
                          child: const Text(
                            '<- Back To Menu',
                            style: TextStyle(
                                fontSize: 11, fontStyle: FontStyle.italic),
                          )),
                    )
                  ],
                ),
              )
            ],
          )),
    );
  }
}
