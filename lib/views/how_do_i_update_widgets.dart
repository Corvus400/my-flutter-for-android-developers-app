import 'package:flutter/material.dart';

class HowDoIUpdateWidgets extends StatefulWidget {
  const HowDoIUpdateWidgets({Key? key}) : super(key: key);

  @override
  _HowDoIUpdateWidgetsState createState() => _HowDoIUpdateWidgetsState();
}

class _HowDoIUpdateWidgetsState extends State<HowDoIUpdateWidgets> {
  String textToShow = 'I Like Flutter';

  void _updateText() {
    setState(() {
      textToShow = 'Flutter is Awesome!';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sample App'),
      ),
      body: Center(
        child: Text(textToShow),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _updateText,
        tooltip: 'Update Text',
        child: Icon(Icons.update),
      ),
    );
  }
}
