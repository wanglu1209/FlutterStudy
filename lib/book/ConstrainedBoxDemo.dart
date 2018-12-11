import 'package:flutter/material.dart';

class ConstrainedBoxDemo extends StatelessWidget {
  final redBox = DecoratedBox(decoration: BoxDecoration(color: Colors.red));

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ConstrainedBox(
      constraints: BoxConstraints(minHeight: 50.0, minWidth: 50.0),
      child: Container(
        height: 5.0,
        width: 2.0,
        child: redBox,
      ),
    );
  }
}
