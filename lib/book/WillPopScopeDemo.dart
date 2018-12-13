import 'package:flutter/material.dart';

class WillPopScopeDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _WillPopScopeDemoState();
}

class _WillPopScopeDemoState extends State<WillPopScopeDemo> {
  DateTime _lastPressAt; // 上次点击的时间

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        child: Scaffold(
          appBar: AppBar(
            title: Text('WillPopScopeDemo'),
          ),
          body: Container(
            alignment: Alignment.center,
            child: Text(
              '点击两下退出',
              style: TextStyle(fontSize: 16),
            ),
          ),
        ),
        onWillPop: () async {
          if (_lastPressAt == null ||
              DateTime.now().difference(_lastPressAt) > Duration(seconds: 1)) {
            _lastPressAt = DateTime.now();
            return false;
          }
          return true;
        });
  }
}
