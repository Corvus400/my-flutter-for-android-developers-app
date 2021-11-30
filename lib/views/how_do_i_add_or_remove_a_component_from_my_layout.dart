import 'package:flutter/material.dart';

class HowDoIAddOrRemoveAComponentFromMyLayout extends StatefulWidget {
  const HowDoIAddOrRemoveAComponentFromMyLayout({Key? key}) : super(key: key);

  @override
  _HowDoIAddOrRemoveAComponentFromMyLayoutState createState() => _HowDoIAddOrRemoveAComponentFromMyLayoutState();
}

class _HowDoIAddOrRemoveAComponentFromMyLayoutState extends State<HowDoIAddOrRemoveAComponentFromMyLayout> {
  bool toggle = true;

  void _toggle() {
    setState(() {
      toggle = !toggle;
    });
  }

  Widget _getToggleChild() {
    if (toggle) {
      return Text('Toggle One');
    } else {
      return ElevatedButton(
          onPressed: () {},
          child: Text('Toggle Two')
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sample App'),
      ),
      body: Center(
        child: _getToggleChild(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _toggle,
        tooltip: 'Update Text',
        child: Icon(Icons.update),
      ),
    );
  }
}
