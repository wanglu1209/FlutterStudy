import 'package:flutter/material.dart';

class MyListTile extends StatelessWidget {
// 字段意思和数据转载自：https://www.jianshu.com/p/d8755183656b

// const ListTile({
//     Key key,
//     this.leading,              // item 前置图标
//     this.title,                // item 标题
//     this.subtitle,             // item 副标题
//     this.trailing,             // item 后置图标
//     this.isThreeLine = false,  // item 是否三行显示
//     this.dense,                // item 直观感受是整体大小
//     this.contentPadding,       // item 内容内边距
//     this.enabled = true,
//     this.onTap,                // item onTap 点击事件
//     this.onLongPress,          // item onLongPress 长按事件
//     this.selected = false,     // item 是否选中状态
// })

// 首先造数据
  final List<String> strItems = <String>[
    '图标_keyboard',
    '图标_print',
    '图标_router',
    '图标_pages',
    '图标_zoom_out_map',
    '图标_zoom_out',
    '图标_youtube_searched_for',
    '图标_wifi_tethering',
    '图标_wifi_lock',
    '图标_widgets',
    '图标_weekend',
    '图标_web',
    '图标_accessible',
    '图标_ac_unit',
  ];

  final List<Icon> iconItems = <Icon>[
    new Icon(Icons.keyboard),
    new Icon(Icons.print),
    new Icon(Icons.router),
    new Icon(Icons.pages),
    new Icon(Icons.zoom_out_map),
    new Icon(Icons.zoom_out),
    new Icon(Icons.youtube_searched_for),
    new Icon(Icons.wifi_tethering),
    new Icon(Icons.wifi_lock),
    new Icon(Icons.widgets),
    new Icon(Icons.weekend),
    new Icon(Icons.web),
    new Icon(Icons.accessible),
    new Icon(Icons.ac_unit),
  ];

  @override
  Widget build(BuildContext context) {
    // ListTile
    var _listview = <Widget>[];
    for (var i = 0; i < iconItems.length; i++) {
      _listview.add(ListTile(
        leading: iconItems[i],
        title: Text(
          strItems[i],
          style: TextStyle(fontSize: 16.0),
        ),
        trailing: Icon(Icons.keyboard_arrow_right),
        onTap: () {
          // 点击弹出Dialog
          showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  title: Text('Demo'),
                  content: Text('${strItems[i]}'),
                );
              });
        },
      ));
    }
    return ListView(
      children:
          // 添加分割线，可选属性：color
          ListTile.divideTiles(context: context, tiles: _listview).toList(),
    );
  }
}
