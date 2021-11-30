import 'package:flutter/material.dart';
import 'routes.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('FlutterForAndroidDevelopersApp')),
      body: Center(
        child: ListView(
          children: [
            TextButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(kRouteV1);
                },
                child: const Text('How do I update widgets?')),
            TextButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(kRouteV2);
                },
                child: const Text(
                    'How do I lay out my widgets? Where is my XML layout file?')),
            TextButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(kRouteV3);
                },
                child: const Text(
                    'How do I add or remove a component from my layout?')),
            TextButton(
              onPressed: () {
                Navigator.of(context).pushNamed(kRouteV4);
              },
              child: const Text('How do I animate a widget?'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pushNamed(kRouteV5);
              },
              child: const Text('How do I use a Canvas to draw/paint?'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pushNamed(kRouteV6);
              },
              child: const Text('How do I build custom widgets?'),
            ),
            Divider(
              height: 2,
              thickness: 2,
              color: Colors.blueAccent,
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pushNamed(kRouteI1);
              },
              child: const Text('How do I handle incoming intents from external applications in Flutter?'),
            ),
            TextButton(
              onPressed: () async {
                final coordinates = await Navigator.of(context).pushNamed(kRouteI2);

                setState(() {
                  final snackBar = SnackBar(content: Text(coordinates.toString()));
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                });
              },
              child: const Text('What is the equivalent of startActivityForResult()?'),
            ),
            Divider(
              height: 2,
              thickness: 2,
              color: Colors.blueAccent,
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pushNamed(kRouteA1);
              },
              child: const Text('What is the equivalent of runOnUiThread() in Flutter?'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pushNamed(kRouteA2);
              },
              child: const Text('How do you move work to a background thread?'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pushNamed(kRouteA4);
              },
              child: const Text('How do I show the progress for a long-running task?'),
            ),
            Divider(
              height: 2,
              thickness: 2,
              color: Colors.blueAccent,
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pushNamed(kRouteG1);
              },
              child: const Text('How do I handle other gestures on widgets?'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pushNamed(kRouteL1);
              },
              child: const Text('What is the alternative to a ListView in Flutter?'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pushNamed(kRouteL2);
              },
              child: const Text('How do I know which list item is clicked on?'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pushNamed(kRouteL3);
              },
              child: const Text('How do I update ListView’s dynamically?'),
            ),
            Divider(
              height: 2,
              thickness: 2,
              color: Colors.blueAccent,
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pushNamed(kRouteW1);
              },
              child: const Text('How do I set custom fonts on my Text widgets?'),
            ),
            Divider(
              height: 2,
              thickness: 2,
              color: Colors.blueAccent,
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pushNamed(kRouteF1);
              },
              child: const Text('How do I show validation errors?'),
            ),
            Divider(
              height: 2,
              thickness: 2,
              color: Colors.blueAccent,
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pushNamed(kRouteD1);
              },
              child: const Text('How do I access Shared Preferences?'),
            )
          ],
        ),
      ),
    );
  }
}
