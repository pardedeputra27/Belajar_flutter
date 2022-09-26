import 'package:flutter/material.dart';

class BelajarDraggable extends StatefulWidget {
  const BelajarDraggable({Key? key}) : super(key: key);

  @override
  State<BelajarDraggable> createState() => _BelajarDraggableState();
}

class _BelajarDraggableState extends State<BelajarDraggable> {
  Color color1 = Colors.red;
  Color color2 = Colors.blue;
  Color targetColor = Colors.yellow;
  bool isAccepted = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('CTE')),
          leading: BackButton(
            color: Colors.black,
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Draggable<Color>(
                  data: color1,
                  childWhenDragging: const SizedBox(
                    width: 50,
                    height: 50,
                    child: Material(
                      color: Colors.grey,
                      shape: StadiumBorder(),
                      elevation: 3,
                    ),
                  ),
                  feedback: SizedBox(
                    width: 50,
                    height: 50,
                    child: Material(
                        color: color1,
                        shape: const StadiumBorder(),
                        elevation: 3),
                  ),
                  child: SizedBox(
                    width: 50,
                    height: 50,
                    child: Material(
                      color: color1,
                      shape: const StadiumBorder(),
                      elevation: 3,
                    ),
                  ),
                ),
                Draggable<Color>(
                  data: color2,
                  childWhenDragging: const SizedBox(
                    width: 50,
                    height: 50,
                    child: Material(
                      color: Colors.grey,
                      shape: StadiumBorder(),
                      elevation: 3,
                    ),
                  ),
                  feedback: SizedBox(
                    width: 50,
                    height: 50,
                    child: Material(
                        color: color2,
                        shape: const StadiumBorder(),
                        elevation: 3),
                  ),
                  child: SizedBox(
                    width: 50,
                    height: 50,
                    child: Material(
                      color: color2,
                      shape: const StadiumBorder(),
                      elevation: 3,
                    ),
                  ),
                ),
              ],
            ),
            DragTarget<Color>(
              onWillAccept: (value) => true,
              onAccept: (value) {
                isAccepted = true;
                targetColor = value;
              },
              builder: (context, candidateData, rejectedData) {
                return (isAccepted)
                    ? SizedBox(
                        width: 100,
                        height: 100,
                        child: Material(
                          color: targetColor,
                          shape: const StadiumBorder(),
                        ))
                    : SizedBox(
                        width: 100,
                        height: 100,
                        child: Material(
                          color: targetColor,
                          shape: const StadiumBorder(),
                        ));
              },
            ),
          ],
        ),
      ),
    );
  }
}
