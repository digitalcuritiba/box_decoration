import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Box Decoration',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Demo Home Page'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          buildRowWithIcons([
            Icons.people,
            Icons.people,
            Icons.people
          ], [
            Color.fromARGB(255, 248, 248, 248),
            Color.fromARGB(255, 175, 76, 167),
            Colors.blue
          ]),
          buildRowWithIcons([
            Icons.people,
            Icons.people,
            Icons.people
          ], [
            Color.fromARGB(255, 255, 0, 85),
            Colors.purple,
            Color.fromARGB(255, 59, 137, 255)
          ]),
          buildRowWithIcons([
            Icons.people,
            Icons.people,
            Icons.people
          ], [
            Color.fromARGB(255, 243, 33, 149),
            Color.fromARGB(255, 228, 188, 58),
            Colors.red
          ]),
          buildRowWithIcons([Icons.people, Icons.people, Icons.people],
              [Colors.yellow, Colors.purple, Colors.orange]),
        ],
      ),
    );
  }

  Widget buildRowWithIcons(List<IconData> icons, List<Color> colors) {
    assert(icons.length == colors.length,
        'Icons and colors lists must have the same length');

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: List.generate(
        icons.length,
        (index) => Container(
          width: 100.0,
          height: 150.0,
          decoration: BoxDecoration(
            color: colors[index],
            border: Border.all(
              color: Colors.black,
              width: 2.0,
            ),
            borderRadius: BorderRadius.circular(8.0),
          ),
          padding: const EdgeInsets.all(0),
          child: Icon(
            icons[index],
            size: 30.0,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
