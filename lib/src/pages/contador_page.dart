import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget {
  @override
  createState() => _ContadorPageState();


}

class _ContadorPageState extends State<ContadorPage> {
  TextStyle _estiloTexto = new TextStyle(fontSize: 25.0);
  int _conteo = 0;

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
            Text('Número de taps', style: _estiloTexto),
            Text('$_conteo', style: TextStyle(fontSize: 60.0)),
            _mensajeWidgetConteo()
            //, style:DefaultTextStyle.of(context).style.apply(color: Color(0xFFFF9000), fontSizeFactor: 1.0))
          ]

        )
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      floatingActionButton: _crearBotones()
      // FloatingActionButton(
      //   child: Icon(Icons.add),
      //   onPressed: () {
      //     setState(() {
      //       _conteo++;
      //     });
      //   },
      // ),
    );
  }

  Widget _crearBotones() {

    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        SizedBox(width: 25.0),
        FloatingActionButton(
          backgroundColor: Color.fromRGBO(220, 20, 60, 50),
          tooltip: 'Devuelve el contador a cero',
          child: Icon(Icons.restore),
          onPressed: _reset
          // () {
          //   setState(() {
          //     _conteo = 0;
          //   });
          // },
        ),
        Expanded(child: SizedBox()),
        FloatingActionButton(
          backgroundColor: Color.fromRGBO(255, 140, 0, 50),
          tooltip: 'Disminuye en uno el valor',
          child: Icon(Icons.remove),
          onPressed: _sustraer
          // () {
            // setState(() {
            //   if (_conteo > 0)
            //     _conteo--;
            // });
          // },
        ),
        SizedBox(width: 5.0),
        FloatingActionButton(
          backgroundColor: Color.fromRGBO(34, 139, 34, 50),
          tooltip: 'Aumenta en uno el valor',
          child: Icon(Icons.add),
          onPressed: _agregar
          // (){
            // setState(() {
            //   _conteo++;
            // });
          // },
        ),

      ],
    );
    
  }

  void _agregar() {
    setState(() => _conteo++ );
  }

  void _sustraer() {
    setState(() {
      if(_conteo > 0) {
        _conteo--; 
      } 
    });
  }

  void _reset() {
    setState(() => _conteo = 0);
  }

  // String _mensajeConteo() {
  //   String mensaje = '# $_conteo ' + (_conteo % 5 == 0 ? '' : 'no ') + 'es múltiplo de 5';
  //   return mensaje;
  // }

  bool _isMultiplo({multiplo: 5}) => (_conteo % 5 == 0 ? true : false);

  Widget _mensajeWidgetConteo() {
    bool multiplo = _isMultiplo(multiplo:_conteo);
    String mensaje = '# $_conteo ' + (multiplo ? '' : 'no ') + 'es múltiplo de 5';
    Color colorTexto = Color(multiplo ? 0xFF228B22 : 0xFFFF9000);
    return _conteo == 0 
      ? Text('') 
      : Text(mensaje, style: TextStyle(fontSize: 20.0, color: colorTexto));
  }
}