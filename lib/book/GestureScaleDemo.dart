import 'package:flutter/material.dart';

class GestureScaleDemo extends StatefulWidget {
  @override
  _GestureScaleDemoState createState() => _GestureScaleDemoState();
}

class _GestureScaleDemoState extends State<GestureScaleDemo> {
  double _width = 200.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('GestureScaleDemo')),
      body: Center(
        child: GestureDetector(
          child: Image.asset(
            'assets/images/lake.jpg',
            width: _width,
          ),
          onScaleUpdate: (d) {
            setState(() {
              _width = 200 * d.scale.clamp(.8, 10.0);
            });
          },
        ),
      ),
    );
  }
}
