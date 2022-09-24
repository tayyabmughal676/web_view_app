import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      darkTheme: ThemeData.dark(),
      theme: ThemeData.light(),
      home: const MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter app'),
      ),
      body: Center(
        child: Text('Hello world!'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('Zapp!');
          Future<void>.value()
              .then((val) => throw new Exception('You got Zapped!'));
        },
        backgroundColor: Colors.yellow[700],
        child: Icon(
          Icons.bolt,
          color: Colors.black,
        ),
      ),
    );
  }
}

void main() {
  print('Hello from your Flutter app!');
  runApp(MyApp());
}
