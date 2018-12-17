import 'package:flutter/material.dart';

class GestureDetectorDemo extends StatefulWidget {
  @override
  _GestureDetectorDemoState createState() => _GestureDetectorDemoState();
}

class _GestureDetectorDemoState extends State<GestureDetectorDemo> {
  String _operation = 'No Gesture detected!'; // 保存事件名称

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          child: Container(
            alignment: Alignment.center,
            color: Colors.blue,
            width: 200.0,
            height: 100.0,
            child: Text(
              _operation,
              style: TextStyle(color: Colors.white),
            ),
          ),
          onTap: () => updateText('Tap'),
          onDoubleTap: () => updateText('DoubleTap'),
          onLongPress: () => updateText('LongPress'),
        ),
      ),
    );
  }

  updateText(String text) {
    setState(() {
      _operation = text;
    });
  }
}
