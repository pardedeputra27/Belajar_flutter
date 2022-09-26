import 'package:flutter/material.dart';

class BelajarCostumCard extends StatelessWidget {
  const BelajarCostumCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Latihan Costum Card'),
          leading: BackButton(
            color: Colors.black,
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: Stack(children: [
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.blue, Colors.yellow, Colors.green],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter),
            ),
          ),
          Center(
            child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.8,
              width: MediaQuery.of(context).size.width * 0.7,
              child: Card(
                elevation: 10,
                child: Stack(
                  children: [
                    Opacity(
                      opacity: 0.7,
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            image: const DecorationImage(
                                image: AssetImage(
                                    "assets/background-white-sand.jpg"),
                                fit: BoxFit.cover)),
                      ),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.35,
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(4),
                              topRight: Radius.circular(4)),
                          image: DecorationImage(
                              image: AssetImage("assets/sun.jpg"),
                              fit: BoxFit.cover)),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(
                        20,
                        50 + MediaQuery.of(context).size.height * 0.35,
                        20,
                        20,
                      ),
                      child: Center(
                        child: Column(children: <Widget>[
                          Text(
                            'Beautifull Sunset at Bul-bul Beach',
                            style: TextStyle(
                              color: Colors.orange[400],
                              fontSize: 25,
                            ),
                            maxLines: 2,
                            textAlign: TextAlign.center,
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 20, bottom: 15),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Posted on ',
                                  style: TextStyle(
                                    color: Colors.grey[500],
                                    fontSize: 12,
                                  ),
                                ),
                                Text(
                                  'SEP 26 , 2022',
                                  style: TextStyle(
                                    color: Colors.orange[400],
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Row(
                            children: const <Widget>[
                              Spacer(flex: 10),
                              Icon(
                                Icons.thumb_up,
                                color: Colors.grey,
                              ),
                              Spacer(flex: 1),
                              Text(
                                '99',
                                style: TextStyle(color: Colors.grey),
                              ),
                              Spacer(flex: 5),
                              Icon(
                                Icons.comment,
                                color: Colors.grey,
                              ),
                              Spacer(flex: 1),
                              Text(
                                '888',
                                style: TextStyle(color: Colors.grey),
                              ),
                              Spacer(flex: 10),
                            ],
                          )
                        ]),
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ]),
      ),
    );
  }
}
