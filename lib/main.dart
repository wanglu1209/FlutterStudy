import 'package:flutter/material.dart';
import 'listview.dart';
import 'package:dio/dio.dart';
import 'dart:io';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    request();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('FlutterStudy'),
        ),
        body: MyListTile(),
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
