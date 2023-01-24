import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class gesturedetector extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _gesturedetector();
  }
}

class _gesturedetector extends State<gesturedetector>{
  bool _lightIsOn = false;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("GestureDetector Example"),
      ),
      body: Center(
        child: Container(
          alignment: FractionalOffset.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(
                  Icons.lightbulb_outline,
                  color: _lightIsOn ? Colors.yellow.shade600 : Colors.black,
                  size: 60,
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    // Toggle light when tapped.
                    _lightIsOn = !_lightIsOn;
                  });
                },
                child: Container(
                  color: Colors.yellow.shade600,
                  padding: const EdgeInsets.all(8),
                  // Change button text when light changes state.
                  child: Text(_lightIsOn ? 'TURN LIGHT OFF' : 'TURN LIGHT ON'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}