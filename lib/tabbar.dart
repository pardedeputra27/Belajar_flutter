import 'package:flutter/material.dart';

class FirstRoutes extends StatelessWidget {
  const FirstRoutes({Key? key}) : super(key: key);

  final TabBar myTabBar = const TabBar(
    indicator: BoxDecoration(
        color: Colors.red,
        border: Border(
            top: BorderSide(
                color: Color.fromARGB(255, 157, 248, 82), width: 7))),
    // indicatorColor: Colors.redAccent,
    tabs: [
      Tab(icon: Icon(Icons.computer)),
      Tab(icon: Icon(Icons.safety_check)),
      Tab(icon: Icon(Icons.directions_bike)),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottom: PreferredSize(
            preferredSize: Size.fromHeight(myTabBar.preferredSize.height),
            child: Container(color: Colors.green, child: myTabBar)),
        title: const Text('BeLajar dari Erico dermawan'),
      ),
      body: TabBarView(children: [
        ListView(children: [
          const Center(
            child: Card(
              margin: EdgeInsets.all(10),
              color: Colors.yellow,
              child: Text(
                'List of my study',
                style: TextStyle(
                    color: Colors.black, fontSize: 18, letterSpacing: 2),
              ),
            ),
          ),
          containerList(context, 'Row and Column', '/row'),
          containerList(context, 'Container', '/container'),
          containerList(context, 'Statefull', '/statefull'),
          containerList(context, 'Anynomous Method', '/anynomous'),
          containerList(context, 'Text Style', '/textStyle'),
          containerList(context, 'List and ListView', '/list'),
          containerList(context, 'Animated and Gesture', '/animated'),
          containerList(context, 'Flexible', '/flexible'),
          containerList(context, 'Stack and Align', '/stack'),
          containerList(context, 'Image', '/image'),
          containerList(context, 'Spacer', '/spacer'),
          containerList(context, 'Draggable', '/draggable'),
          containerList(context, 'Card', '/card'),
          containerList(context, 'Text Field', '/textField'),
          containerList(context, 'Media Query', '/mediaQuery'),
          containerList(context, 'inkWell (buttonSendiri)', '/inkwell'),
          containerList(context, 'CostumCard', '/costumCard'),
          containerList(context, 'Login Page', '/loginPage'),
          containerList(context, 'HeroAndClipRRect', '/hero'),
          containerList(context, 'Appbar design', '/appbar'),
        ]),
        const Icon(
          Icons.safety_check,
          color: Color.fromARGB(255, 18, 243, 149),
          size: 200,
        ),
        const Icon(
          Icons.directions_bike,
          color: Colors.grey,
          size: 200,
        ),
      ]),
    );
  }
}

Container containerList(BuildContext context, String text, String route) {
  return Container(
      margin: const EdgeInsets.only(top: 5, left: 20, right: 20),
      child: ElevatedButton(
        child: Text(text),
        onPressed: () {
          Navigator.pushNamed(context, route);
        },
      ));
}
