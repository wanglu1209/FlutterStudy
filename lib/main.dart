import 'package:FlutterStudy/book/BothGestureDemo.dart';
import 'package:FlutterStudy/book/CustomScrollViewDemo.dart';
import 'package:FlutterStudy/book/EventBusDemoRouteA.dart';
import 'package:FlutterStudy/book/GestureDetectorDemo.dart';
import 'package:FlutterStudy/book/GestureDragDemo.dart';
import 'package:FlutterStudy/book/GestureDragVertical.dart';
import 'package:FlutterStudy/book/GestureRecognizerDemo.dart';
import 'package:FlutterStudy/book/GestureScaleDemo.dart';
import 'package:FlutterStudy/book/HeroAnimationDemo.dart';
import 'package:FlutterStudy/book/IgnorePointerDemo.dart';
import 'package:FlutterStudy/book/InheritedWidgetDemoRoute.dart';
import 'package:FlutterStudy/book/ListenerBehaviorDemo.dart';
import 'package:FlutterStudy/book/ListenerDemo.dart';
import 'package:FlutterStudy/book/MainNavigatorButton.dart';
import 'package:FlutterStudy/book/NotificationDemo.dart';
import 'package:FlutterStudy/book/NotificationFirstDemo.dart';
import 'package:FlutterStudy/book/ScaleAnimDemo.dart';
import 'package:FlutterStudy/book/ScrollControllerDemoRoute.dart';
import 'package:FlutterStudy/book/ScrollNotificationDemo.dart';
import 'package:FlutterStudy/book/SingleChildScrollViewDemo.dart';
import 'package:FlutterStudy/book/StaggerDemo.dart';
import 'package:FlutterStudy/book/WillPopScopeDemo.dart';
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
      home: MyHomePage(title: '首页'),
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
          title: new Text(
            widget.title,
            style: TextStyle(fontSize: 16),
          ),
        ),
        body: SingleChildScrollView(
          child: Center(
              child: Column(
            children: <Widget>[
              MainNavigatorButton('Single Child Scroll Widget',
                  widget: SingleChildScrollViewDemoRoute()),
              Container(
                  margin: EdgeInsets.only(top: 5.0),
                  child: MainNavigatorButton(
                    'InfiniteListView',
                    widget: InfiniteListView(),
                  )),
              Container(
                  margin: EdgeInsets.only(top: 5.0),
                  child: MainNavigatorButton(
                    'CustomScrollViewDemo',
                    widget: CustomScrollViewDemo(),
                  )),
              Container(
                  margin: EdgeInsets.only(top: 5.0),
                  child: MainNavigatorButton(
                    'ScrollControllerDemo',
                    widget: ScrollControllerDemo(),
                  )),
              Container(
                  margin: EdgeInsets.only(top: 5.0),
                  child: MainNavigatorButton(
                    'ScrollNotificationDemo',
                    widget: ScrollNotificationDemo(),
                  )),
              Container(
                  margin: EdgeInsets.only(top: 5.0),
                  child: MainNavigatorButton(
                    'WillPopScopeDemo',
                    widget: WillPopScopeDemo(),
                  )),
              Container(
                  margin: EdgeInsets.only(top: 5.0),
                  child: MainNavigatorButton(
                    'ShareDataWidgetDemo',
                    widget: InheritedWidgetDemo(),
                  )),
              Container(
                  margin: EdgeInsets.only(top: 5.0),
                  child: MainNavigatorButton(
                    'ListenerDemo',
                    widget: ListenerDemo(),
                  )),
              Container(
                  margin: EdgeInsets.only(top: 5.0),
                  child: MainNavigatorButton(
                    'ListenerBehaviorDemo',
                    widget: ListenerBehaviorDemo(),
                  )),
              Container(
                  margin: EdgeInsets.only(top: 5.0),
                  child: MainNavigatorButton(
                    'IgnorePointerDemo',
                    widget: IgnorePointerDemo(),
                  )),
              Container(
                  margin: EdgeInsets.only(top: 5.0),
                  child: MainNavigatorButton(
                    'GestureDetectorDemo',
                    widget: GestureDetectorDemo(),
                  )),
              Container(
                  margin: EdgeInsets.only(top: 5.0),
                  child: MainNavigatorButton(
                    'GestureDragDemo',
                    widget: GestureDragDemo(),
                  )),
              Container(
                  margin: EdgeInsets.only(top: 5.0),
                  child: MainNavigatorButton(
                    'GestureDragVertical',
                    widget: GestureDragVertical(),
                  )),
              Container(
                  margin: EdgeInsets.only(top: 5.0),
                  child: MainNavigatorButton(
                    'GestureScaleDemo',
                    widget: GestureScaleDemo(),
                  )),
              Container(
                  margin: EdgeInsets.only(top: 5.0),
                  child: MainNavigatorButton(
                    'GestureRecognizerDemo',
                    widget: GestureRecognizerDemo(),
                  )),
              Container(
                  margin: EdgeInsets.only(top: 5.0),
                  child: MainNavigatorButton(
                    'BothGestureDemo',
                    widget: BothGestureDemo(),
                  )),
              Container(
                  margin: EdgeInsets.only(top: 5.0),
                  child: MainNavigatorButton(
                    'EventBusDemoRouteA',
                    widget: EventBusDemoRouteA(),
                  )),
              Container(
                  margin: EdgeInsets.only(top: 5.0),
                  child: MainNavigatorButton(
                    'NotificationFirstDemo',
                    widget: NotificationFirstDemo(),
                  )),
              Container(
                  margin: EdgeInsets.only(top: 5.0),
                  child: MainNavigatorButton(
                    'NotificationDemo',
                    widget: NotificationDemo(),
                  )),
              Container(
                  margin: EdgeInsets.only(top: 5.0),
                  child: MainNavigatorButton(
                    'ScaleAnimDemo',
                    widget: ScaleAnimDemo(),
                  )),
              Container(
                  margin: EdgeInsets.only(top: 5.0),
                  child: MainNavigatorButton(
                    'HeroAnimationDemo',
                    widget: HeroAnimationDemo(),
                  )),
              Container(
                  margin: EdgeInsets.only(top: 5.0),
                  child: MainNavigatorButton(
                    'StaggerDemo',
                    widget: StaggerDemo(),
                  )),
            ],
          )),
        ));
  }
}
