
import 'package:bytebank/screens/dashboard/saldo.dart';
import 'package:bytebank/screens/deposito/formulario.dart';
import 'package:bytebank/screens/transferencia/formulario.dart';
import 'package:bytebank/screens/transferencia/lista.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Dashboard extends StatelessWidget{
    Widget build(BuildContext context){
      return Scaffold(
          appBar: AppBar(
          title: const Text('Bytebank'),
      ),
      body:  ListView(
        children:<Widget>[
          Align(alignment: Alignment.topCenter, child: SaldoCard()
      ),
      ButtonBar(
        alignment: MainAxisAlignment.center,
        children: <Widget>[
        RaisedButton(
          color: Colors.green,
        child: Text('Receber Déposito'),
        onPressed: (){
          Navigator.push(
            context, MaterialPageRoute(builder: (context){
              return FormularioDeposito();
            }));
        },
      ), ],
      ),
      RaisedButton(
        color: Colors.green,
        child: Text('Nova Transferência'),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) {
              return FormularioTransferencia();
            }),
          );
        },
      ),
      RaisedButton(
        color: Colors.green,
        child: Text('Transferências'),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) {
              return ListaTransferencias();
            }),
          );
        },
      ),
 ]));
    }
}