import 'package:flutter/material.dart';

class RoundButton extends StatefulWidget {
  RoundButton();

  @override
  State<StatefulWidget> createState() => _RoundButtonState();
}

class _RoundButtonState extends State<RoundButton> {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: () {
        print('click');
      },
      color: Colors.blue,
      colorBrightness: Brightness.dark, // 设置按钮的主题，默认是浅色，则文字颜色是黑色的。深色主题文字颜色是白色的
      highlightColor: Colors.blue,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0)), // 设置圆角
      child: Text('Submit'),
    );
  }
}
