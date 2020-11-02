import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class CupertinoPage extends StatefulWidget {
  @override
  _CupertinoPageState createState() => _CupertinoPageState();
}

class _CupertinoPageState extends State<CupertinoPage> {
  bool _switch = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CupertinoNavigationBar(
        middle: Text('aaaaa'),
      ),
      body: Column(children: <Widget>[
        CupertinoButton(
          onPressed: null,
          child: Text('쿠피티노 버튼'),
        ),
        CupertinoSwitch(
            value: _switch,
            onChanged: (bool value) {
              setState(() {
                _switch = value;
              });
            }),
        RaisedButton(
          onPressed: null,
          child: Text('머티리얼 버튼'),
        ),
        Switch(
            value: _switch,
            onChanged: (bool value) {
              setState(() {
                _switch = value;
              });
            }),
      ]),
    );
  }
}
