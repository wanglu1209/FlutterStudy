import 'package:FlutterStudy/book/EventBusDemoRouteB.dart';
import 'package:flutter/material.dart';

import 'EventBusDemo.dart';

class EventBusDemoRouteA extends StatefulWidget {
  @override
  _EventBusDemoRouteAState createState() => _EventBusDemoRouteAState();
}

class _EventBusDemoRouteAState extends State<EventBusDemoRouteA> {
  String text;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    bus.on("login", (arg) {
      setState(() {
        text = arg.toString();
        print(text);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('EventBusDemoRouteA')),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(
              "接收Eventbus传过来的值",
              style: TextStyle(fontSize: 30),
            ),
            Text(text ?? "test",
                style: TextStyle(fontSize: 30, color: Colors.blue)),
            RaisedButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return EventBusDemoRouteB();
                }));
              },
              child: Text('点击跳转到第二页发送Event'),
            )
          ],
        ),
      ),
    );
  }
}
