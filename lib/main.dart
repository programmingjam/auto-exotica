import 'package:flutter/material.dart';
import 'auto_manager.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
        accentColor: Colors.deepOrangeAccent,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('AutoExotica'),
        ),
        body: AutoManager(),
        ),
    );
  }
}
