import 'package:flutter/material.dart';

class ScrollNotificationDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ScrollNotificationDemoState();
}

class _ScrollNotificationDemoState extends State<ScrollNotificationDemo> {
  String _progress = "0%";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ScrollNotificationDemo'),
      ),
      body: NotificationListener<ScrollNotification>(
        onNotification: (notification) {
          /// pixels：当前滚动位置。
          /// maxScrollExtent：最大可滚动长度。
          /// extentBefore：滑出ViewPort顶部的长度；此示例中相当于顶部滑出屏幕上方的列表长度。
          /// extentInside：ViewPort内部长度；此示例中屏幕显示的列表部分的长度。
          /// extentAfter：列表中未滑入ViewPort部分的长度；此示例中列表底部未显示到屏幕范围部分的长度。
          /// atEdge：是否滑到了Scrollable Widget的边界（此示例中相当于列表顶或底部）。

          double progress = notification.metrics.pixels /
              notification.metrics.maxScrollExtent;
          setState(() {
            _progress = '${(progress * 100).toInt()}%';
          });
          print('BottomEdge: ${notification.metrics.extentAfter == 0}');
        },
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            ListView.builder(
                itemCount: 100,
                itemExtent: 50.0,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text('$index'),
                  );
                }),
            CircleAvatar(
              radius: 30.0,
              child: Text(_progress),
              backgroundColor: Colors.black54,
            )
          ],
        ),
      ),
    );
  }
}
