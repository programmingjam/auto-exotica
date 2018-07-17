import 'package:flutter/material.dart';

class ExoticAutos extends StatelessWidget {
  final List<String> autos;

  ExoticAutos([this.autos = const []]);

  Widget _buildAutoItem(BuildContext context, int index) {
    return Card(
      child: Column(
        children: [
          Image.asset('assets/ghibli.jpg'),
          Text(autos[index]),
        ],
      ),
    );
  }

  Widget _buildAutoList() {
    Widget autoCard;
    if (autos.length > 0) {
      autoCard = ListView.builder(
        itemBuilder: _buildAutoItem,
        itemCount: autos.length,
      );
    } else {
      autoCard = Center(
        child: Text('No Products found, please add some'),
      );
    }
    return autoCard;
  }

  @override
  Widget build(BuildContext context) {
    return _buildAutoList();
  }
}
