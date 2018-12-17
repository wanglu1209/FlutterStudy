import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class GestureRecognizerDemo extends StatefulWidget {
  @override
  _GestureRecognizerDemoState createState() => _GestureRecognizerDemoState();
}

class _GestureRecognizerDemoState extends State<GestureRecognizerDemo> {
  TapGestureRecognizer _tapGestureRecognizer = new TapGestureRecognizer();
  bool _toggle = false; // 变色开关

  @override
  void dispose() {
    _tapGestureRecognizer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('GestureRecognizerDemo')),
      body: Center(
        child: Text.rich(TextSpan(children: [
          TextSpan(text: '你好世界'),
          TextSpan(
              text: '点我变色',
              style: TextStyle(
                  fontSize: 30.0, color: _toggle ? Colors.blue : Colors.red),
              recognizer: _tapGestureRecognizer
                // 两个点这种语法称为级联符号  允许操作同一个对象，也就是返回当前这个对象
                ..onTap = () {
                  setState(() {
                    _toggle = !_toggle;
                  });
                }),
          TextSpan(text: '你好世界')
        ])),
      ),
    );
  }
}
