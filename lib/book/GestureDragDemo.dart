import 'package:flutter/material.dart';

class GestureDragDemo extends StatefulWidget {
  @override
  _GestureDragDemoState createState() => _GestureDragDemoState();
}

class _GestureDragDemoState extends State<GestureDragDemo>
    with SingleTickerProviderStateMixin {
  double _top = 0.0; // 距离顶部的偏移量
  double _left = 0.0; // 距离左侧的偏移量

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GestureDragDemo'),
      ),
      body: Stack(
        children: <Widget>[
          Positioned(
              top: _top,
              left: _left,
              child: GestureDetector(
                child: CircleAvatar(
                  child: Text('A'),
                ),
                onPanDown: (e) {
                  print('手指按下：${e.globalPosition}');
                },
                // 滑动
                onPanUpdate: (e) {
                  setState(() {
                    _left += e.delta.dx;
                    _top += e.delta.dy;
                  });
                },
                onPanEnd: (e) {
                  // 打印滑动结束时的速度
                  print(e.velocity);
                },
              )),
        ],
      ),
    );
  }
}
