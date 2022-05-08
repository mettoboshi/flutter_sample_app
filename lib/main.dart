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
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  String _type = '偶数';

  void _incrementCounter() {
    setState(() {
      _counter++;

      if (_counter % 2 == 0) {
        _type = "偶数";
      } else {
        _type = "奇数";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Row(children: [
          const Icon(Icons.create),
          Text(widget.title),
        ])),
        drawer: const Drawer(
          child: Center(child: Text("Drawer")),
        ),
        endDrawer: const Drawer(child: Text("Right Drawer")),
        body: Column(children: [
          const Text("初めてのテキスト"),
          Text(
            '$_counter',
            style: Theme.of(context).textTheme.headline4,
          ),
          Text('$_type',
              style: const TextStyle(fontSize: 20, color: Colors.red)),
          TextButton(
            onPressed: () => {print("test")},
            child: const Text("更新"),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              Icon(
                Icons.favorite,
                color: Colors.pink,
                size: 24.0,
              ),
              Icon(
                Icons.audiotrack,
                color: Colors.green,
                size: 30.0,
              ),
              Icon(
                Icons.beach_access,
                color: Colors.blue,
                size: 36.0,
              )
            ],
          ),
        ]),
        floatingActionButton: FloatingActionButton(
            onPressed: _incrementCounter, child: const Icon(Icons.timer)));
  }
}
