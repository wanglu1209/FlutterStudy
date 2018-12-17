import 'package:flutter/material.dart';

import 'EventBusDemo.dart';

class EventBusDemoRouteB extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('EventBusDemoRouteB'),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            bus.emit('login', 'Test event');
          },
          child: Text('点击发送Event'),
        ),
      ),
    );
  }
}
