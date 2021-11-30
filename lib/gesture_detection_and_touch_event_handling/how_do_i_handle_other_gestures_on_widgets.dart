import 'package:flutter/material.dart';

late AnimationController _controller;
late CurvedAnimation _curve;

class HowDoIHandleOtherGesturesOnWidgets extends StatefulWidget {
  const HowDoIHandleOtherGesturesOnWidgets({Key? key}) : super(key: key);

  @override
  _HowDoIHandleOtherGesturesOnWidgetsState createState() => _HowDoIHandleOtherGesturesOnWidgetsState();
}

class _HowDoIHandleOtherGesturesOnWidgetsState extends State<HowDoIHandleOtherGesturesOnWidgets> with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
        vsync: this,
      duration: const Duration(milliseconds: 2000),
    );
    _curve = CurvedAnimation(
      parent: _controller,
      curve: Curves.easeIn,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onDoubleTap: () {
            if (_controller.isCompleted) {
              _controller.reverse();
            } else {
              _controller.forward();
            }
          },
          child: RotationTransition(
            turns: _curve,
            child: FlutterLogo(
              size: 200.0,
            ),
          ),
        ),
      ),
    );
  }
}
