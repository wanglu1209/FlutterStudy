import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    var _unameController = TextEditingController();

    return new Scaffold(
        appBar: new AppBar(
          title: new Text(widget.title),
        ),
        body: Center(
          child: DefaultTextStyle(
              style: TextStyle(color: Colors.white, fontSize: 18.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  RaisedButton(
                    onPressed: () {},
                    colorBrightness: Brightness.dark,
                    padding:
                        EdgeInsets.symmetric(vertical: 12.0, horizontal: 24.0),
                    color: Colors.blue,
                    child: Text(
                      'Single Child Scroll Widget',
                      style: TextStyle(fontSize: 18),
                    ),
                  )
                ],
              )),
        ));
  }
}
