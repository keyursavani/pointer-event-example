import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class pointer_events extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _pointer_events();
  }
}

class _pointer_events extends State<pointer_events>{
  int downCounter = 0;
  int upCounter = 0;
  double x = 0.0;
  double y = 0.0;

  void incrementDown(PointerEvent details) {
    updateLocation(details);
    setState(() {
      downCounter++;
    });
  }

  void incrementUp(PointerEvent details) {
    updateLocation(details);
    setState(() {
      upCounter++;
    });
  }

  void updateLocation(PointerEvent details) {
    setState(() {
      x = details.position.dx;
      y = details.position.dy;
    });
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Pointer Events"),
      ),
      body: Center(
        child:ConstrainedBox(
          constraints: BoxConstraints.tight(const Size(350.0, 250.0)),
          child: Listener(
            onPointerDown: incrementDown,
            onPointerMove: updateLocation,
            onPointerUp: incrementUp,
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Text(
                      'You have pressed or released in this area this many times:',
                  style: TextStyle(fontSize: 19),),
                  Text(
                    '\n$downCounter presses\n$upCounter releases\n',
                    style: Theme.of(context).textTheme.headline4,
                  ),
                  Text(
                    'The cursor is here: (${x.toStringAsFixed(2)}, ${y.toStringAsFixed(2)})',
                    style: TextStyle(fontSize: 19),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}