import 'package:flutter/material.dart';

class Autos extends StatelessWidget {
  final List<String> autos;

  Autos(this.autos);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: autos
          .map((element) => Card(
                child: Column(
                  children: <Widget>[
                    Image.asset('assets/ghibli.jpg'),
                    Text('Maserati Ghibli'),
                  ],
                ),
              ))
          .toList(),
    );
  }
}
