import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class WhatIsTheEquivalentOfRunOnUiThreadInFlutter extends StatefulWidget {
  const WhatIsTheEquivalentOfRunOnUiThreadInFlutter({Key? key}) : super(key: key);

  @override
  _WhatIsTheEquivalentOfRunOnUiThreadInFlutterState createState() => _WhatIsTheEquivalentOfRunOnUiThreadInFlutterState();
}

class _WhatIsTheEquivalentOfRunOnUiThreadInFlutterState extends State<WhatIsTheEquivalentOfRunOnUiThreadInFlutter> {
  List widgets = [];
  
  @override
  void initState() {
    super.initState();
    loadData();
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
    return Padding(
        padding: EdgeInsets.all(10.0),
      child: Text("Row ${widgets[i]["title"]}"),
    );
  }
  
  Future<void> loadData() async {
    var dataURL = Uri.parse('https://jsonplaceholder.typicode.com/posts');
    http.Response response = await http.get(dataURL);
    setState(() {
      widgets = jsonDecode(response.body);
    });
  }
}
