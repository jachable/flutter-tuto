import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {

  final estiloTexto = new TextStyle(fontSize: 25.0);
  final conteo = 10;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Título'),
        centerTitle: true,
        elevation: 8.6
      ),
      body: Center(
        child: Column (
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Número de taps', style: estiloTexto),
            Text('$conteo', style: TextStyle(fontSize: 60.0))
            //, style:DefaultTextStyle.of(context).style.apply(color: Color(0xFFFF9000), fontSizeFactor: 1.0))
          ]

        )
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          //conteo = conteo + 1;
          print('$conteo');
        },
      ),
    );
  }
}