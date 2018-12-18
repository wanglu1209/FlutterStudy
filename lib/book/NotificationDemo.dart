import 'package:flutter/material.dart';

class NotificationDemo extends StatefulWidget {
  @override
  _NotificationDemoState createState() => _NotificationDemoState();
}

class _NotificationDemoState extends State<NotificationDemo> {
  String _msg = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('NotificationDemo')),
        body: NotificationListener<MyNotification>(
          onNotification: (notification) {
            setState(() {
              _msg += notification.msg + "   ";
            });
          },
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Builder(
                  builder: (context) {
                    return RaisedButton(
                        child: Text('Send Notification'),
                        onPressed: () =>
                            MyNotification('Hi').dispatch(context));
                  },
                ),
                Text(_msg)
              ],
            ),
          ),
        ));
  }
}

class MyNotification extends Notification {
  final String msg;

  MyNotification(this.msg);
}
