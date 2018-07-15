import 'package:flutter/material.dart';

main() => runApp(App());

class App extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _AppState();
  }
}

class _AppState extends State<App> {
  List<String> _autos = ['Maserati'];

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
                onPressed: () {
                  setState(() {
                    _autos.add('Ghibli');
                  });
                },
                child: Text('Add Auto'),
              ),
            ),
            Column(
              children: _autos
                  .map((element) => Card(
                        child: Column(
                          children: <Widget>[
                            Image.asset('assets/ghibli.jpg'),
                            Text('Maserati Ghibli'),
                          ],
                        ),
                      ))
                  .toList(),
            ),
          ],
        ),
      ),
    );
  }
}
