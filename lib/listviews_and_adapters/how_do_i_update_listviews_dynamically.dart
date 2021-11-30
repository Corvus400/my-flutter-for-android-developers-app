import 'package:flutter/material.dart';

class HowDoIUpdateListViewsDynamically extends StatefulWidget {
  const HowDoIUpdateListViewsDynamically({Key? key}) : super(key: key);

  @override
  _HowDoIUpdateListViewsDynamicallyState createState() => _HowDoIUpdateListViewsDynamicallyState();
}

class _HowDoIUpdateListViewsDynamicallyState extends State<HowDoIUpdateListViewsDynamically> {
  List<Widget> widgets = [];

  @override
  void initState() {
    super.initState();
    for (int i = 0; i < 100; i++) {
      widgets.add(getRow(i));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sample App'),
      ),
      body: ListView.builder(
        itemCount: widgets.length,
        itemBuilder: (BuildContext context, int position) {
          return getRow(position);
        },
      ),
    );
  }

  Widget getRow(int i) {
    return GestureDetector(
      onTap: () {
        setState(() {
          widgets.add(getRow(widgets.length));
          print('row $i');
        });
      },
      child: Padding(
        padding: EdgeInsets.all(10.0),
        child: Text('Row $i'),
      ),
    );
  }
}
