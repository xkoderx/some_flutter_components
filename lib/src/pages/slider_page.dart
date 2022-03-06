import 'dart:ffi';

import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  SliderPage({Key? key}) : super(key: key);

  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  double _valorSlider = 100.0;
  bool _bloquearCheck = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Slider page')),
        body: Container(
            padding: EdgeInsets.only(top: 50.0),
            child: Column(
              children: [
                _crearSlider(),
                _checkbox(),
                _crearSwitch(),
                Expanded(child: _crearImagen()),
              ],
            )));
  }

  Widget _crearSlider() {
    return Slider(
        value: _valorSlider,
        min: 10.0,
        max: 400.0,
        activeColor: Colors.black,
        label: 'Tamaño de la imagen',
        onChanged: (_bloquearCheck)
            ? null
            : (valor) {
                setState(() {
                  _valorSlider = valor;
                });
              });
  }

  Widget _crearImagen() {
    return Image(
      image: NetworkImage(
          'https://www.muycomputer.com/wp-content/uploads/2021/08/Spider-Man.jpg'),
      width: _valorSlider,
      fit: BoxFit.contain,
    );
  }

  Widget _checkbox() {
    // return Checkbox(value: _bloquearCheck, onChanged: (valor) {
    //   setState(() {
    //   _bloquearCheck=valor as bool;
    //   });
    // });
    return CheckboxListTile(
        title: Text('Bloquear Slider'),
        value: _bloquearCheck,
        onChanged: (valor) {
          setState(() {
            _bloquearCheck = valor as bool;
          });
        });
  }

  Widget _crearSwitch() {
    return SwitchListTile(
        title: Text('Bloquear Slider'),
        value: _bloquearCheck,
        onChanged: (valor) {
          setState(() {
            _bloquearCheck = valor as bool;
          });
        });
  }
}
