import 'package:flutter/material.dart';
import 'package:entradadados/CampoTexto.dart';
import 'package:entradadados/EntradaCheckbox.dart';
import 'package:entradadados/EntradaRadioButton.dart';
import 'package:entradadados/EntradaSwitch.dart';
import 'package:entradadados/EntradaSlider.dart';

void main() {
  runApp(MaterialApp(
    //home: new CampoTexto(),
    //home:  new EntradaCheckbox(),
    //home:  new EntradaRadioButton(),
    //home: new EntradaSwitch(),
    home: new EntradaSlider(),


    debugShowCheckedModeBanner: false,
  ));
}
