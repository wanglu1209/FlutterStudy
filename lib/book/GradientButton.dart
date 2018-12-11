import 'package:flutter/material.dart';

class GradientButton extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _GradientButtonState();
  }
}

class _GradientButtonState extends State<GradientButton> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return DefaultTextStyle(
        style: TextStyle(color: Colors.white, fontSize: 18.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              onPressed: null,
              color: Colors.blue,
              child: Text('Single Child Scroll Widget'),
            )
          ],
        ));
  }
}
