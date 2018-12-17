import 'package:flutter/material.dart';

class GestureDragVertical extends StatefulWidget {
  @override
  _GestureDragVerticalState createState() => _GestureDragVerticalState();
}

class _GestureDragVerticalState extends State<GestureDragVertical> {
  double _top = 0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GestureDragVertical'),
      ),
      body: Stack(
        children: <Widget>[
          Positioned(
              top: _top,
              child: GestureDetector(
                child: CircleAvatar(
                  child: Text('A'),
                ),
                onVerticalDragUpdate: (details) {
                  setState(() {
                    _top += details.delta.dy;
                  });
                },
              ))
        ],
      ),
    );
  }
}
