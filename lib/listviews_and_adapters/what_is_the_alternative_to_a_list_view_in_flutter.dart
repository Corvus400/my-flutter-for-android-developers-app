import 'package:flutter/material.dart';

class WhatIsTheAlternativeToAListViewInFlutter extends StatefulWidget {
  const WhatIsTheAlternativeToAListViewInFlutter({Key? key}) : super(key: key);

  @override
  _WhatIsTheAlternativeToAListViewInFlutterState createState() => _WhatIsTheAlternativeToAListViewInFlutterState();
}

class _WhatIsTheAlternativeToAListViewInFlutterState extends State<WhatIsTheAlternativeToAListViewInFlutter> {
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
      widgets.add(Padding(
        padding: EdgeInsets.all(10.0),
        child: Text('Row $i'),
      ));
    }
    return widgets;
  }
}
