import 'package:flutter/material.dart';

class HowDoIAnimateAWidget extends StatefulWidget {
  const HowDoIAnimateAWidget({Key? key}) : super(key: key);

  @override
  _HowDoIAnimateAWidgetState createState() => _HowDoIAnimateAWidgetState();
}

class _HowDoIAnimateAWidgetState extends State<HowDoIAnimateAWidget> with TickerProviderStateMixin {
  late AnimationController controller;
  late CurvedAnimation curve;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
        duration: const Duration(milliseconds: 2000),
        vsync: this,
    );
    curve = CurvedAnimation(
        parent: controller,
        curve: Curves.easeIn,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fade Demo'),
      ),
      body: Center(
        child: FadeTransition(
          opacity: curve,
          child: FlutterLogo(
            size: 100.0,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: 'Fade',
        onPressed: () {
          controller.forward();
        },
        child: Icon(Icons.brush),
      ),
    );
  }
}
