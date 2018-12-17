import 'package:flutter/material.dart';

class IgnorePointerDemo extends StatefulWidget {
  @override
  _IgnorePointerDemoState createState() => _IgnorePointerDemoState();
}

class _IgnorePointerDemoState extends State<IgnorePointerDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Listener(
        child: IgnorePointer(
          child: Listener(
            child: Container(
              color: Colors.red,
              width: 200,
              height: 200,
            ),
            onPointerDown: (event) => print('in'),
          ),
        ),
        onPointerDown: (event) => print('up'),
      ),
    );
  }
}
