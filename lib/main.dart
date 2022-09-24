import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
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
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final flutterWebViewPlugin = FlutterWebviewPlugin();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    flutterWebViewPlugin.onStateChanged.listen((WebViewStateChanged event) {
      debugPrint("stateEvent: ${event.type}");
    });
  }

  @override
  Widget build(BuildContext context) {
    return WebviewScaffold(
      url: "https://www.legofie.com/",
      withLocalStorage: true,
      initialChild: Container(
        color: Colors.redAccent,
        child: const Center(
          child: Text('Waiting...'),
        ),
      ),
    );
  }
}
