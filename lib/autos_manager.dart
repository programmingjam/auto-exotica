import 'package:flutter/material.dart';

import './autos.dart';

class AutosManager extends StatefulWidget {
  final String firstAuto;

  AutosManager(this.firstAuto);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _AutosManagerState();
  }
}

class _AutosManagerState extends State<AutosManager> {
  List<String> _autos = [];

  @override
    void initState() {
      _autos.add(widget.firstAuto);
      super.initState();
    }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(children: [
      Container(
        margin: EdgeInsets.all(10.0),
        child: RaisedButton(
          color: Theme.of(context).primaryColor,
          onPressed: () {
            setState(() {
              _autos.add('Ghibli');
            });
          },
          child: Text('Add Auto'),
        ),
      ),
     Expanded(child: Autos(_autos))
    ]
    );
  }
}
