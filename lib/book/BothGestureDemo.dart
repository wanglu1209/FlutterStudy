import 'package:flutter/material.dart';

class BothGestureDemo extends StatefulWidget {
  @override
  _BothGestureDemoState createState() => _BothGestureDemoState();
}

class _BothGestureDemoState extends State<BothGestureDemo> {
  double _top = 0.0;
  double _left = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('BothGestureDemo')),
      body: Stack(
        children: <Widget>[
          Positioned(
            child: GestureDetector(
              child: CircleAvatar(
                child: Text('A'),
              ),
              onVerticalDragUpdate: (d) {
                setState(() {
                  _top += d.delta.dy;
                });
              },
              onHorizontalDragUpdate: (d) {
                setState(() {
                  _left += d.delta.dx;
                });
              },
            ),
            top: _top,
            left: _left,
          )
        ],
      ),
    );
  }
}
