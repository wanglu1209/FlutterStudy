import 'package:FlutterStudy/book/ShareDataWidgetDemo.dart';
import 'package:flutter/material.dart';

class InheritedWidgetDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _InheritedWidgetDemoState();
}

class _InheritedWidgetDemoState extends State<InheritedWidgetDemo> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ShareDataWidgetDemo'),
      ),
      body: Center(
        child: ShareDataWidget(
          data: count,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(bottom: 20.0),
                child: TestWidget(),
              ),
              RaisedButton(
                child: Text('increment'),
                onPressed: () => setState(() => ++count),
              )
            ],
          ),
        ),
      ),
    );
  }
}
