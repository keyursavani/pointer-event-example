import 'package:flutter/material.dart';
import '/pointerexample.dart';
import '/mousererionwxample.dart';
import '/gesturedetectorexample.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyHomePageState();
  }
}

class MyHomePageState extends State<MyHomePage>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("AppBar"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Container(
              alignment: Alignment.center,
              child: GestureDetector(
                onTap: (){
                  Navigator.push(
                      context,
                  MaterialPageRoute(builder: (context){
                    return pointer_events();
                  }),
                  );
                },
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: Text("Pointer Example",textAlign: TextAlign.center),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.deepOrangeAccent,
                    borderRadius: BorderRadius.all(Radius.circular(5.0))
                  ),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 20),
              alignment: Alignment.center,
              child: GestureDetector(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context){
                      return gesturedetector();
                    }),
                  );
                },
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: Text("GestureDetector Example",textAlign: TextAlign.center),
                  ),
                  decoration: BoxDecoration(
                      color: Colors.deepOrangeAccent,
                      borderRadius: BorderRadius.all(Radius.circular(5.0))
                  ),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 20),
              alignment: Alignment.center,
              child: GestureDetector(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context){
                      return mouse_region();
                    }),
                  );
                },
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: Text("MouseRegion Example",textAlign: TextAlign.center),
                  ),
                  decoration: BoxDecoration(
                      color: Colors.deepOrangeAccent,
                      borderRadius: BorderRadius.all(Radius.circular(5.0))
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

