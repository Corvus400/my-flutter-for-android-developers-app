import 'package:flutter/material.dart';

class WhatIsTheEquivalentOfStartActivityForResult extends StatelessWidget {
  const WhatIsTheEquivalentOfStartActivityForResult({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('What is the equivalent of startActivityForResult()?'),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('setResult()'),
          onPressed: () {
            Navigator.of(context).pop({{"lat":43.821757,"long":-79.226392}});
          },
        ),
      ),
    );
  }
}
