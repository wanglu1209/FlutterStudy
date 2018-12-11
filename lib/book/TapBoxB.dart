import 'package:flutter/material.dart';

/// 父Widget管理状态
class ParentWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ParentWidgetState();
}

class _ParentWidgetState extends State<ParentWidget> {
  bool _active = false;

  void _handleTapBoxChanged(bool newValue) {
    setState(() {
      _active = newValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TapBoxB(
        onChanged: _handleTapBoxChanged,
        active: _active,
      ),
    );
  }
}

class TapBoxB extends StatelessWidget {
  final ValueChanged<bool> onChanged;
  final bool active;

  TapBoxB({Key key, this.active: false, @required this.onChanged});

  void _handleTap() {
    onChanged(!active);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _handleTap,
      child: Container(
        child: Center(
          child: Text(
            active ? "Active" : "InActive",
            style: TextStyle(fontSize: 32.0, color: Colors.white),
          ),
        ),
        width: 200.0,
        height: 200.0,
        color: active ? Colors.lightGreen : Colors.grey,
      ),
    );
  }
}
