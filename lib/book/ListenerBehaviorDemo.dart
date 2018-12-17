import 'package:flutter/material.dart';

class ListenerBehaviorDemo extends StatefulWidget {
  @override
  _ListenerBehaviorDemoState createState() => _ListenerBehaviorDemoState();
}

class _ListenerBehaviorDemoState extends State<ListenerBehaviorDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Listener(
            child: ConstrainedBox(
              constraints: BoxConstraints.tight(Size(300.0, 200.0)),
              child:
                  DecoratedBox(decoration: BoxDecoration(color: Colors.blue)),
            ),
            onPointerDown: (event) => print('down 0'),
          ),
          Listener(
            child: ConstrainedBox(
              constraints: BoxConstraints.tight(Size(200.0, 100.0)),
              child: DecoratedBox(
                decoration: BoxDecoration(color: Colors.green),
                child: Text('Test'),
              ),
            ),
            onPointerDown: (event) => print('down 1'),
            behavior: HitTestBehavior.translucent,
          )
        ],
      ),
    );
  }
}
