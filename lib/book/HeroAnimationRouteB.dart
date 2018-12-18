import 'package:flutter/material.dart';

class HeroAnimationRouteB extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child:
            Hero(tag: 'avatar', child: Image.asset('assets/images/lake.jpg')),
      ),
    );
  }
}
