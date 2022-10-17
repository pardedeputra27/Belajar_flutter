import 'package:flutter/material.dart';

class BelajarAnimatedSwitcher extends StatefulWidget {
  const BelajarAnimatedSwitcher({Key? key}) : super(key: key);

  @override
  State<BelajarAnimatedSwitcher> createState() =>
      _BelajarAnimatedSwitcherState();
}

class _BelajarAnimatedSwitcherState extends State<BelajarAnimatedSwitcher> {
  bool isOn = false;
  Widget myWidget = const MyContainer();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: BackButton(
            onPressed: () {
              Navigator.pop(context);
            },
            color: Colors.black,
          ),
          title: const Text('Animated Swicher'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              AnimatedSwitcher(
                duration: const Duration(seconds: 2),
                child: myWidget,
                transitionBuilder: (child, animation) {
                  return RotationTransition(turns: animation, child: child);
                  // ScaleTransition(
                  //   scale: animation,
                  //   child: child,
                  // );
                },
              ),
              Switch(
                  activeColor: Colors.green,
                  inactiveTrackColor: Colors.red,
                  value: isOn,
                  onChanged: (newValue) {
                    isOn = newValue;
                    setState(() {
                      if (isOn) {
                        myWidget = const Text(
                          'Switch: On',
                          style: TextStyle(
                              color: Colors.green,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        );
                      } else {
                        myWidget = const MyContainer();
                      }
                    });
                  })
            ],
          ),
        ),
      ),
    );
  }
}

class MyContainer extends StatefulWidget {
  const MyContainer({Key? key}) : super(key: key);

  @override
  State<MyContainer> createState() => _MyContainerState();
}

class _MyContainerState extends State<MyContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 100,
      decoration: BoxDecoration(
        color: Colors.red,
        border: Border.all(color: Colors.black, width: 3),
      ),
      child: const Center(
          child: Text(
        'Switch: On',
        style: TextStyle(
            color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
      )),
    );
  }
}
