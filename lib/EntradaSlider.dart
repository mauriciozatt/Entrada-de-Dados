import 'package:flutter/material.dart';

class EntradaSlider extends StatefulWidget {
  const EntradaSlider({Key? key}) : super(key: key);

  @override
  State<EntradaSlider> createState() => _EntradaSliderState();
}

class _EntradaSliderState extends State<EntradaSlider> {
  @override
  double _ValorSelecionado = 0;
  String _labelSlider = '0';

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Exemplo Slider"),
        backgroundColor: Colors.red,
      ),
      body: Column(
        children: <Widget>[
          Padding(padding: EdgeInsets.all(60)),
          Slider(
            min: 0, /// Valor mínimo da minha seleção
            max: 10, /// Valor máximo da minha seleção
            activeColor: Colors.red, /// cor da linha
            inactiveColor: Colors.black12,
            label: _labelSlider, /// O label deve ser usado em conjunto com o divisions senão não funciona.
            divisions: 5, ///pontinhos na linha com div

            value: _ValorSelecionado,

            ///Valor apresentado

            onChanged: (double vValor) {
              setState(() {
                _ValorSelecionado = vValor;
                _labelSlider = _ValorSelecionado.toString();
              });
            },
          ),


          ElevatedButton(
              onPressed: () {
                print("Valor selecionado " +  _ValorSelecionado.toString());

              },
              child: Text("Salvar"),


          )


        ],
      ),
    );
  }
}
