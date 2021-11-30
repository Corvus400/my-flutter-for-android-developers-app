import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HowDoIShowTheProgressForALongRunningTask extends StatefulWidget {
  const HowDoIShowTheProgressForALongRunningTask({Key? key}) : super(key: key);

  @override
  _HowDoIShowTheProgressForALongRunningTaskState createState() => _HowDoIShowTheProgressForALongRunningTaskState();
}

class _HowDoIShowTheProgressForALongRunningTaskState extends State<HowDoIShowTheProgressForALongRunningTask> {
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
      body: getBody(),
    );
  }
  
  Widget getBody() {
    bool showLoadingDialog = widgets.isEmpty;
    if (showLoadingDialog) {
      return getProgressDialog();
    } else {
      return getListView();
    }
  }
  
  Widget getProgressDialog() {
    return Center(child: CircularProgressIndicator());
  }
  
  Widget getRow(int i) {
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: Text("Row ${widgets[i]["title"]}"),
    );
  }
  
  ListView getListView() {
    return ListView.builder(
      itemCount: widgets.length,
      itemBuilder: (BuildContext context, int position) {
        return getRow(position);
      },
    );
  }
  
  Future<void> loadData() async {
    var dataUrl = Uri.parse('https://jsonplaceholder.typicode.com/posts');
    http.Response response = await http.get(dataUrl);
    setState(() {
      widgets = jsonDecode(response.body);
    });
  }
}
