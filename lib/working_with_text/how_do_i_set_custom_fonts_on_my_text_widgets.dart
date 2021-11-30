import 'package:flutter/material.dart';

class HowDoISetCustomFontsOnMyTextWidgets extends StatefulWidget {
  const HowDoISetCustomFontsOnMyTextWidgets({Key? key}) : super(key: key);

  @override
  State<HowDoISetCustomFontsOnMyTextWidgets> createState() => _HowDoISetCustomFontsOnMyTextWidgetsState();
}

class _HowDoISetCustomFontsOnMyTextWidgetsState extends State<HowDoISetCustomFontsOnMyTextWidgets> {
  bool _isUseCustomFont = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sample App'),
      ),
      body: Center(
        child: Column(
          children: [
            _getText(_isUseCustomFont),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    _isUseCustomFont = !_isUseCustomFont;
                  });
                },
                child: const Text('Switch font'))
          ],
        ),
      ),
    );
  }

  Text _getText (bool isUseCustomFont) {
    if (isUseCustomFont) {
      return Text(
        'This is a text in a font called Roboto',
        style: TextStyle(fontFamily: 'Roboto', fontWeight: FontWeight.bold),
      );
    } else {
      return Text(
        'This is a text in a font called NotoSerif',
        style: TextStyle(fontFamily: 'NotoSerif'),
      );
    }
  }
}
