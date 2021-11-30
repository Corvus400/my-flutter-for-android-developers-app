import 'package:flutter/material.dart';
import 'package:flutter_for_android_developers/views/CustomButton.dart';

class HowDoIBuildCustomWidgets extends StatelessWidget {
  const HowDoIBuildCustomWidgets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('How do I build custom widgets?'),
      ),
      body: Center(
        child: CustomButton('Hello'),
      ),
    );
  }
}
