import 'package:flutter/material.dart';

class AutoControl extends StatelessWidget {
  final Function addAuto;

  AutoControl(this.addAuto);

  @override
    Widget build(BuildContext context) {
      return RaisedButton(
            color: Theme.of(context).accentColor,
            child: Text('Add Auto'),
            onPressed: () {
              addAuto('Sweets');
            },
          ),;
    }
}