import 'package:flutter/material.dart';

import './autos_manager.dart';

main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
        accentColor: Colors.deepPurple,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('AutoExotica'),
        ),
        body: AutosManager('Maserati Ghibli'),
      ),
    );
  }
}
