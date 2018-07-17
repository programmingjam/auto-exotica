import 'package:flutter/material.dart';
import 'exotic_autos.dart';
import 'auto_control.dart';

class AutoManager extends StatefulWidget {
  final String startingAuto;

  AutoManager({this.startingAuto});

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _AutoManagerState();
  }
}

class _AutoManagerState extends State<AutoManager> {
   List<String> _autos = [];

  @override
  void initState() {
    if(widget.startingAuto != null) {
      _autos.add(widget.startingAuto);
    }
    super.initState();
  }

  @override
  void didUpdateWidget(AutoManager oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
  }

  void _addAuto(String auto) {
    setState(() {
      _autos.add(auto);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.all(2.0),
          child: AutoControl(_addAuto),
        ),
        Expanded(child: ExoticAutos(_autos))
      ],
    );
  }
}
