import 'package:flutter/material.dart';

import '../auto_manager.dart';

class HomePage extends StatelessWidget {
  @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text('AutoExotica'),
        ),
        body: AutoManager(),
        );
    }
}