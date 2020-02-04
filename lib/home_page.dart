import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _radioValue = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('$_radioValue'),
            Row(
              children: <Widget>[
                Radio(
                  groupValue: _radioValue,
                  value: 0,
                  onChanged: (int i) => setState(() => _radioValue = i),
                ),
                Text("Sólo pendientes"),
                Radio(
                  groupValue: _radioValue,
                  value: 1,
                  onChanged: (int i) => setState(() => _radioValue = i),
                ),
                Text("Todos"),
              ],
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text(widget.title),
      ),
    );
  }

  cambiarFiltro(int nuevoValor) {
    setState(() {
      _radioValue = nuevoValor;
    });
  }
}
