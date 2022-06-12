import 'package:flutter/material.dart';

class EntradaSwitch extends StatefulWidget {
  const EntradaSwitch({Key? key}) : super(key: key);

  @override
  State<EntradaSwitch> createState() => _EntradaSwitchState();
}

class _EntradaSwitchState extends State<EntradaSwitch> {
  @override
  bool _EscolhaUsuario = false;
  bool _EscolhaUsuarioVistoPorUltimo = false;

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Exemplo Switch"),
        backgroundColor: Colors.teal,
      ),
      body: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Switch(
                  value: _EscolhaUsuario,

                  ///Valor True/False que nem no checkBox
                  onChanged: (bool vValor) {
                    /// Ao alterar o Switch a variável que está apresentando o valor em tela e atualizada...

                    setState(() {
                      _EscolhaUsuario = vValor;
                    });
                  }),
              Text("Receber Notificações"),
            ],
          ),
          SwitchListTile(
              title: Text("Remover visto por último"),
              activeColor: Colors.green,
              value: _EscolhaUsuarioVistoPorUltimo,
              onChanged: (bool vValor) {
                setState(() {
                  _EscolhaUsuarioVistoPorUltimo = vValor;
                });
              }),
          ElevatedButton.icon(
            label: Text("Salvar"),
            icon: Icon(Icons.save),
            onPressed: () {
              print("Receber notificação " + _EscolhaUsuario.toString());
              print("Remover visto por último " + _EscolhaUsuarioVistoPorUltimo.toString());
            },
          )
        ],
      ),
    );
  }
}
