import 'package:flutter/material.dart';

class ListenerDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ListenerDemoState();
}

class _ListenerDemoState extends State<ListenerDemo> {
  PointerEvent _event;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Listener(
        child: Center(
          child: Container(
            alignment: Alignment.center,
            color: Colors.blue,
            width: 300.0,
            height: 150.0,
            child: Text(
              _event?.toString() ?? "",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        onPointerDown: (event) => setState(() => _event = event),
        onPointerMove: (event) => setState(() => _event = event),
        onPointerUp: (event) => setState(() => _event = event),
      ),
    );
  }
}
