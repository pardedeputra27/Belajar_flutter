import 'package:flutter/material.dart';

class BelajarAnimatedSwitcher extends StatefulWidget {
  const BelajarAnimatedSwitcher({Key? key}) : super(key: key);

  @override
  State<BelajarAnimatedSwitcher> createState() =>
      _BelajarAnimatedSwitcherState();
}

class _BelajarAnimatedSwitcherState extends State<BelajarAnimatedSwitcher> {
  bool isOn = false;
  Widget myWidget = const MyContainer(
    color: Colors.amber,
    condition: 'off',
    keyContainer: 1,
  );
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
                duration: const Duration(seconds: 1),
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
                        myWidget = const MyContainer(
                          color: Colors.green,
                          condition: 'on',
                          keyContainer: 2,
                        );
                      } else {
                        myWidget = const MyContainer(
                          color: Colors.red,
                          condition: 'off',
                          keyContainer: 1,
                        );
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
  final MaterialColor color;
  final String condition;
  final int keyContainer;
  const MyContainer(
      {Key? key,
      required this.color,
      required this.condition,
      required this.keyContainer})
      : super(key: key);

  @override
  State<MyContainer> createState() => _MyContainerState();
}

class _MyContainerState extends State<MyContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      key: ValueKey(widget.keyContainer),
      width: 200,
      height: 100,
      decoration: BoxDecoration(
        color: widget.color,
        border: Border.all(color: Colors.black, width: 3),
      ),
      child: Center(
          child: Text(
        'Switch:${widget.condition}',
        style: const TextStyle(
            color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
      )),
    );
  }
}
