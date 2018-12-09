import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import 'MyListViewBuilder.dart';

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

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // request();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('FlutterStudy'),
          elevation: 0,
        ),
        body: MyListViewBuilder(),
      ),
    );
  }

  /// 尝试一下网络请求
  /// 因Dart是单线程语言，所以网络请求要用异步来处理
  /// async要加到方法后面，表示这个方法内部有需要延迟执行的代码
  request() async {
    var dio = Dio();
    var response = await dio.get('http://www.baidu.com');
    print(response.data);
  }
}
