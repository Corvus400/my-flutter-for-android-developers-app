import 'package:flutter/material.dart';

import 'routes.dart';
import 'package:flutter_for_android_developers/home.dart';


class FlutterForAndroidDevelopersApp extends StatefulWidget {
  const FlutterForAndroidDevelopersApp({Key? key}) : super(key: key);

  @override
  State<FlutterForAndroidDevelopersApp> createState() =>
      _FlutterForAndroidDevelopersAppState();
}

class _FlutterForAndroidDevelopersAppState
    extends State<FlutterForAndroidDevelopersApp> with WidgetsBindingObserver {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance?.addObserver(this);
  }

  @override
  void dispose() {
    WidgetsBinding.instance?.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    switch (state) {
      case AppLifecycleState.resumed:
        print('再開された');
        break;
      case AppLifecycleState.inactive:
        print('非アクティブ');
        break;
      case AppLifecycleState.paused:
        print('停止された');
        break;
      case AppLifecycleState.detached:
        print('破棄された');
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FlutterForAndroidDevelopersApp',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textSelectionTheme: TextSelectionThemeData(selectionColor: Colors.red)
      ),
      home: Home(),
      routes: kRoutes,
    );
  }
}
