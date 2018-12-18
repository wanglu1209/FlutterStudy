import 'package:flutter/material.dart';

class ScaleAnimDemo extends StatefulWidget {
  @override
  _ScaleAnimDemoState createState() => _ScaleAnimDemoState();
}

class _ScaleAnimDemoState extends State<ScaleAnimDemo>
    with SingleTickerProviderStateMixin {
  Animation<double> animation;
  AnimationController controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller =
        new AnimationController(vsync: this, duration: Duration(seconds: 3));
    animation = CurvedAnimation(parent: controller, curve: Curves.ease);
    // 从0 到 300
    animation = Tween(begin: 0.0, end: 300.0).animate(animation)
      ..addListener(() {
        setState(() {});
      });
    // 启动动画
    controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('ScaleAnimDemo')),
      body: AnimatedBuilder(
          animation: animation,
          child: Image.asset('assets/images/lake.jpg'),
          builder: (context, child) {
            return Center(
              child: Container(
                height: animation.value,
                width: animation.value,
                child: child,
              ),
            );
          }),
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}

class AnimatedImage extends AnimatedWidget {
  @override
  Widget build(BuildContext context) {
    final Animation<double> animation = listenable;
    return Center(
      child: Image.asset(
        'assets/images/lake.jpg',
        width: animation.value,
        height: animation.value,
      ),
    );
  }

  AnimatedImage({Key key, Animation<double> animation})
      : super(key: key, listenable: animation);
}
