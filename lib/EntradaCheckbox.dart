import 'dart:ui';

import 'package:flutter/material.dart';

class EntradaCheckbox extends StatefulWidget {
  const EntradaCheckbox({Key? key}) : super(key: key);

  @override
  State<EntradaCheckbox> createState() => _EntradaCheckboxState();
}

class _EntradaCheckboxState extends State<EntradaCheckbox> {
  bool _vVariavelCheck = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Entrada de Dados"),
      ),
      body: Column(
        children: <Widget>[


          Checkbox(
              value: _vVariavelCheck, //Valor apresentado
              onChanged: (bool? vValor) {
                // O método OnChenge retorna o resultado do checkBox na variável declarada(Nessa caso  o vValor)

                setState(() {
                  _vVariavelCheck =
                  vValor!; //Ao alterar o checkbox a variável que está apresentando o valor em tela e atualizada...
                });

                print("bhbcxbn" + _vVariavelCheck.toString());
              }),

          CheckboxListTile( // Tem algumas propriedade a mais...
              activeColor: Colors.red,
              title: Text("Título"),
              subtitle: Text("sub títutlo do check box"),
              value: _vVariavelCheck,
              onChanged: (bool? vValor) {
                setState(() {
                  _vVariavelCheck =
                  vValor!; //Ao alterar o checkbox a variável que está apresentando o valor em tela e atualizada...
                });
              })


        ],
      ),
    );
  }
}
