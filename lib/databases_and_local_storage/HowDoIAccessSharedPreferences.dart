import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HowDoIAccessSharedPreferences extends StatefulWidget {
  const HowDoIAccessSharedPreferences({Key? key}) : super(key: key);

  @override
  _HowDoIAccessSharedPreferencesState createState() => _HowDoIAccessSharedPreferencesState();
}

class _HowDoIAccessSharedPreferencesState extends State<HowDoIAccessSharedPreferences> {
  int _counter = 0;

  @override
  void initState() {
    super.initState();
    _getCounterFromPrefs();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Sample App')),
      body: Center(
        child: ElevatedButton(
          onPressed: _incrementCounter,
          child: Text('Pressed $_counter times.'),
        ),
      ),
    );
  }

  void _incrementCounter() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    setState(() {
      int counter = (prefs.getInt('counter') ?? 0) + 1;
      prefs.setInt('counter', counter);
      _counter = counter;
    });
  }

  void _getCounterFromPrefs() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    setState(() {
      _counter = (prefs.getInt('counter') ?? 0);
    });
  }
}
