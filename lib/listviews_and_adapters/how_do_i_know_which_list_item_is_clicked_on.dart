import 'package:flutter/material.dart';

class HowDoIKnowWhichListItemIsClickedOn extends StatefulWidget {
  const HowDoIKnowWhichListItemIsClickedOn({Key? key}) : super(key: key);

  @override
  _HowDoIKnowWhichListItemIsClickedOnState createState() => _HowDoIKnowWhichListItemIsClickedOnState();
}

class _HowDoIKnowWhichListItemIsClickedOnState extends State<HowDoIKnowWhichListItemIsClickedOn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sample App'),
      ),
      body: ListView(children: _getListData()),
    );
  }

  List<Widget> _getListData() {
    List<Widget> widgets = [];
    for (int i = 0; i < 100; i++) {
      widgets.add(
        GestureDetector(
          onTap: () {
            print("Row $i");
          },
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Text('Row $i'),
          ),
        )
      );
    }
    return widgets;
  }
}
