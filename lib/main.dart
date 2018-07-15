import 'package:flutter/material.dart';

main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('AutoExotica'),
        ),
        body: Column(
          children: [
            Container(
              margin: EdgeInsets.all(10.0),
              child: RaisedButton(
                onPressed: () {},
                child: Text('Add Auto'),
              ),
            ),
            Card(
              child: Column(
                children: <Widget>[
                  Image.asset('assets/ghibli.jpg'),
                  Text('Maserati Ghibli'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
