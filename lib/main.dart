import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
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
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(
                top: 10, bottom: 10.0), // Espaçamento entre as linhas
            child: buildRowWithIcons([Icons.people, Icons.people, Icons.people],
                [Colors.red, Colors.green, Colors.blue]),
          ),
          Padding(
            padding: const EdgeInsets.only(
                bottom: 10.0), // Espaçamento entre as linhas
            child: buildRowWithIcons([Icons.people, Icons.people, Icons.people],
                [Colors.orange, Colors.purple, Colors.yellow]),
          ),
          Padding(
            padding: const EdgeInsets.only(
                bottom: 10.0), // Espaçamento entre as linhas
            child: buildRowWithIcons([Icons.people, Icons.people, Icons.people],
                [Colors.blue, Colors.green, Colors.red]),
          ),
          Padding(
            padding: const EdgeInsets.only(
                bottom: 10.0), // Espaçamento entre as linhas
            child: buildRowWithIcons([Icons.people, Icons.people, Icons.people],
                [Colors.yellow, Colors.purple, Colors.orange]),
          ),
        ],
      ),
    );
  }

  Widget buildRowWithIcons(List<IconData> icons, List<Color> colors) {
    assert(icons.length == colors.length,
        'Icons and colors lists must have the same length');

    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
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
          child: Icon(
            icons[index],
            size: 20.0,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
