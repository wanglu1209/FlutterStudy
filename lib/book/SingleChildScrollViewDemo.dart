import 'package:flutter/material.dart';

class SingleChildScrollViewDemoRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String str = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
    return SingleChildScrollView(
      padding: EdgeInsets.all(16.0),
      child: Center(
        child: Column(
          children: str
              .split("")
              .map((s) => Text(
                    s,
                    textScaleFactor: 1.2,
                  ))
              .toList(),
        ),
      ),
    );
  }
}
