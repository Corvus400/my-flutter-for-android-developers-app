import 'package:flutter/material.dart';

class HowDoILayOutMyWidgetsWhereIsMyXMLLayoutFile extends StatelessWidget {
  const HowDoILayOutMyWidgetsWhereIsMyXMLLayoutFile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sample App'),
      ),
      body: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.only(left: 20.0, right: 30.0),
          ),
          onPressed: () {},
          child: Text('Hello'),
        ),
      ),
    );
  }
}
