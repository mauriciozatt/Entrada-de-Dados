import 'dart:ui';

import 'package:flutter/material.dart';

class EntradaRadioButton extends StatefulWidget {
  const EntradaRadioButton({Key? key}) : super(key: key);

  @override
  State<EntradaRadioButton> createState() => _EntradaRadioButtonState();
}

class _EntradaRadioButtonState extends State<EntradaRadioButton> {
  @override
  String vOpcaoEscolhida = '';
  String vExibe = '';

  void AtualizaLabel() {
    setState(() {
      vExibe = vOpcaoEscolhida;
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Exemplo radio button"),
        backgroundColor: Colors.green,
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            /// Radio Button-  permite marcar apenas um do grupo
            RadioListTile(
                title: Text("Masculino"),
                subtitle: Text("Sub título radio button"),
                activeColor: Colors.blue,
                value: 'M',

                /// aqui será o valor gravado.... "seria o que vai pro banco no caso aqui vai pro GruopValue"
                groupValue: vOpcaoEscolhida,

                /// O valor escolhido ficará salvo nesta variável
                onChanged: (String? vValor) {
                  setState(() {
                    vOpcaoEscolhida = vValor!;

                    /// A variável que armazena recebe o valor 'M' quando o cara selecionar
                  });
                }),

            /// Radio Button-  permite marcar apenas um do grupo
            RadioListTile(
                title: Text("Feminino"),
                subtitle: Text("Sub título radio button"),
                activeColor: Colors.pink,
                secondary: Icon(Icons.add_box),
                value: 'F', /// aqui será o valor gravado.... "seria o que vai pro banco no caso aqui vai pro GruopValue"
                groupValue: vOpcaoEscolhida, /// O valor escolhido ficará salvo nesta variável
                onChanged: (String? vValor) {
                  setState(() {
                    vOpcaoEscolhida = vValor!; /// A variável que armazena recebe o valor 'M' quando o cara selecionar
                  });
                }),

            ElevatedButton.icon(
              onPressed: AtualizaLabel,
              label: Text("Salvar"),
              icon: Icon(Icons.save),
            ),

            Text(vExibe),
          ],
        ),
      ),
    );
  }
}
