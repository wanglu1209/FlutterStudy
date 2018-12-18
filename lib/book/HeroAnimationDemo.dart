import 'package:FlutterStudy/book/HeroAnimationRouteB.dart';
import 'package:flutter/material.dart';

class HeroAnimationDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HeroAnimationDemo'),
      ),
      body: Container(
        alignment: Alignment.topCenter,
        child: InkWell(
          child: Hero(
              tag: 'avatar',
              child: ClipOval(
                child: Image.asset(
                  'assets/images/lake.jpg',
                  width: 50.0,
                  height: 50.0,
                ),
              )),
          onTap: () {
            Navigator.push(context, PageRouteBuilder(
                pageBuilder: (context, animation, secondaryAnimation) {
              return Scaffold(
                appBar: AppBar(
                  title: Text('HeroAnimationRouteB'),
                ),
                body: HeroAnimationRouteB(),
              );
            }));
          },
        ),
      ),
    );
  }
}
