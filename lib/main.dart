import 'package:FlutterStudy/book/CustomScrollViewDemo.dart';
import 'package:FlutterStudy/book/MainNavigatorButton.dart';
import 'package:FlutterStudy/book/SingleChildScrollViewDemo.dart';
import 'package:FlutterStudy/book/infiniteListView.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text(widget.title),
        ),
        body: SingleChildScrollView(
          child: Center(
              child: Column(
            children: <Widget>[
              MainNavigatorButton('Single Child Scroll Widget',
                  widget: SingleChildScrollViewDemoRoute()),
              Container(
                  margin: EdgeInsets.only(top: 10.0),
                  child: MainNavigatorButton(
                    'InfiniteListView',
                    widget: InfiniteListView(),
                  )),
              Container(
                  margin: EdgeInsets.only(top: 10.0),
                  child: MainNavigatorButton(
                    'CustomScrollViewDemo',
                    widget: CustomScrollViewDemo(),
                  )),
            ],
          )),
        ));
  }
}
