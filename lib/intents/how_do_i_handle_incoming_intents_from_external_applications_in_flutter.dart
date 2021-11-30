import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HowDoIHandleIncomingIntentsFromExternalApplicationsInFlutter extends StatefulWidget {
  const HowDoIHandleIncomingIntentsFromExternalApplicationsInFlutter({Key? key}) : super(key: key);

  @override
  _HowDoIHandleIncomingIntentsFromExternalApplicationsInFlutterState createState() => _HowDoIHandleIncomingIntentsFromExternalApplicationsInFlutterState();
}

class _HowDoIHandleIncomingIntentsFromExternalApplicationsInFlutterState extends State<HowDoIHandleIncomingIntentsFromExternalApplicationsInFlutter> {
  static const platform = MethodChannel('app.channel.shared.data');
  String dataShared = 'No data';

  @override
  void initState() {
    super.initState();
    getSharedText();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: Text(dataShared)));
  }

  void getSharedText() async {
    var sharedData = await platform.invokeMethod('getSharedText');
    if (sharedData != null) {
      setState(() {
        dataShared = sharedData;
      });
    }
  }
}
