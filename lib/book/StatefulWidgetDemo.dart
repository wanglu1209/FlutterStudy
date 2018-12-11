import 'package:flutter/material.dart';

class CounterWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _CounterWidgetState();

  final initValue;

  CounterWidget({this.initValue: 0, Key key}) : super(key: key);
}

class _CounterWidgetState extends State<CounterWidget> {
  int _counter;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _counter = widget.initValue;
    print('initState');
  }

  @override
  Widget build(BuildContext context) {
    print('build');
    // TODO: implement build
    return Center(
      child: FlatButton(
          onPressed: () => setState(() => _counter++),
          child: Text('$_counter')),
    );
  }

  @override
  void didUpdateWidget(CounterWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    print("didUpdateWidget");
  }

  @override
  void deactivate() {
    super.deactivate();
    print("deactive");
  }

  @override
  void dispose() {
    super.dispose();
    print("dispose");
  }

  @override
  void reassemble() {
    super.reassemble();
    print("reassemble");
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print("didChangeDependencies");
  }
}
