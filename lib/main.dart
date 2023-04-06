import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
      // home: Scaffold(
      //   appBar: AppBar(
      //     title: const Text("ListView"),
      //   ),
      // body: ListView(
      //list view con children
      // children: [
      //   Card(
      //     child: Image.network(
      //         "https://media.tenor.com/BItFW_Iro_QAAAAC/chance-colibri.gif"),
      //   ),
      //   Card(
      //     child: Image.network(
      //         "https://media.tenor.com/BItFW_Iro_QAAAAC/chance-colibri.gif"),
      //   ),
      //   Card(
      //     child: Image.network(
      //         "https://media.tenor.com/BItFW_Iro_QAAAAC/chance-colibri.gif"),
      //   ),
      //   Card(
      //     child: Image.network(
      //         "https://media.tenor.com/BItFW_Iro_QAAAAC/chance-colibri.gif"),
      //   ),
      // ],
      // ),
      // body: ListView.builder(
      //   // itemCount: 20,
      //   itemBuilder: (BuildContext context, int index) {
      //     return Card(
      //       child: Image.network(
      //           "https://www.marketingtool.online/en/face-generator/img/faces/$index.jpg"),
      //     );
      //   },
      // ),
      // ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key});
  List<String> names = [
    "Cristian",
    "Mario",
    "Laura",
    "Langaro",
    "Mario",
    "Laura",
    "Langaro",
    "Mario",
    "Laura",
    "Langaro",
    "Mario",
    "Laura",
    "Langaro",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("listView"),
      ),
      body: ListView.builder(
        itemCount: names.length,
        itemBuilder: (BuildContext context, int index) {
          final name = names[index];
          // return Card(
          //   child: Text(name),
          // );
          return ListTile(
            title: Text(name),
            leading: const Icon(Icons.person),
            onTap: () => print(name),
          );
        },
      ),
    );
  }
}
