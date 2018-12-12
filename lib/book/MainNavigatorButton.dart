import 'package:flutter/material.dart';

class MainNavigatorButton extends StatefulWidget {
  final String text;
  final Widget widget;

  MainNavigatorButton(this.text, {this.widget});

  @override
  State<StatefulWidget> createState() => _MainNavigatorButtonState();
}

class _MainNavigatorButtonState extends State<MainNavigatorButton> {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: () {
        if (widget.widget != null)
          Navigator.of(context).push(MaterialPageRoute(builder: (context) {
            return widget.widget;
          }));
      },
      colorBrightness: Brightness.dark,
      padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 24.0),
      color: Colors.blue,
      child: Text(
        widget.text,
        style: TextStyle(fontSize: 18),
      ),
    );
  }
}
