import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CampoTexto extends StatefulWidget {
  const CampoTexto({Key? key}) : super(key: key);

  @override
  State<CampoTexto> createState() => _CampoTextoState();
}

class _CampoTextoState extends State<CampoTexto> {


  TextEditingController _meuTextEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Entrada De Dados "),
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(32),

            // Aqui crio o meu campo de texto...
            child: TextField(
              keyboardType: TextInputType.number, //Muda o tipo de teclado...
              decoration: const InputDecoration(labelText: "Digite o CPF"), //label em  cima do próprio campo
              maxLength: 11,
              maxLengthEnforcement: MaxLengthEnforcement.enforced, // Bloqueia para não pemitir digitar mais que dois 11 caracter
              obscureText: false, // Usado em senhas

              //COMO RECUPERAR ESSE VALOR DIGITADO NO EDITT (Ao altera / Ao postar)
              onChanged: (String vTexto) {
                print("Valor digitado: " + vTexto);
              },

              onSubmitted: (String vTexto) {
                print("Valor digitado Submitted: " + vTexto);
              },

              controller: _meuTextEditingController, // uso controler para poder recuperar esses dados em outros componetes. Ex: Botão

            ),
          ),
          RaisedButton(
              child: const Text("Salvar"),
              color: Colors.black,
              textColor: Colors.green,

              onPressed: () {
                print("O valor digitado e recuperado pelo controler " +  _meuTextEditingController.text);

              })
        ],
      ),
    );
  }
}
