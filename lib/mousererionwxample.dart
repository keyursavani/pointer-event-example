import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class mouse_region extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _mouse_region();
  }
}

class _mouse_region extends State<mouse_region> {
  int enterCounter = 0;
  int exitCounter = 0;
  double x = 0.0;
  double y = 0.0;

  void incrementEnter(PointerEvent details) {
    setState(() {
      enterCounter++;
    });
  }

  void incrementExit(PointerEvent details) {
    setState(() {
      exitCounter++;
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
    return Scaffold(
      appBar: AppBar(
        title: Text("MouseRegion Example"),
      ),
      body: Center(
        child:ConstrainedBox(
          constraints: BoxConstraints.tight(const Size(350.0, 250.0)),
          child: MouseRegion(
            onEnter: incrementEnter,
            onHover: updateLocation,
            onExit: incrementExit,
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Text(
                    'You have entered or exited this box this many times:',
                    style:  TextStyle(fontSize: 19),),
                  Text(
                    '\n$enterCounter Entries\n$exitCounter Exits\n',
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
