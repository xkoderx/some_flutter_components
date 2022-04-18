import 'package:components2/theme/theme.dart';
import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _sliderValue = 100;
  bool _sliderOn = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sliders && Checks'),
      ),
      body: Column(
        children: [
          Slider.adaptive(
              min: 50,
              max: 400,
              value: _sliderValue,
              activeColor: AppTheme.primary,
              onChanged: _sliderOn
                  ? (value) {
                      _sliderValue = value;
                      setState(() {});
                    }
                  : null),
          // Checkbox(
          //     value: _sliderOn,
          //     onChanged: (value) {
          //       _sliderOn = value ?? true;
          //       setState(() {});
          //     }),
          // Switch(
          //     activeColor: AppTheme.primary,
          //     value: _sliderOn,
          //     onChanged: (value) {
          //       setState(() {
          //         _sliderOn = value;
          //       });
          //     }),
          CheckboxListTile(
              activeColor: AppTheme.primary,
              title: const Text('Habilitar/Desabilitar la imagen'),
              value: _sliderOn,
              onChanged: (value) {
                _sliderOn = value ?? true;
                setState(() {});
              }),
          SwitchListTile.adaptive(
              activeColor: AppTheme.primary,
              title: const Text('Habilitar/Desabilitar la imagen'),
              value: _sliderOn,
              onChanged: (value) {
                setState(() {
                  _sliderOn = value;
                });
              }),
          const AboutListTile(),
          Expanded(
            child: SingleChildScrollView(
              child: Image(
                image: const NetworkImage(
                    'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fwallpapercave.com%2Fwp%2Fwp7936075.jpg&f=1&nofb=1'),
                fit: BoxFit.contain,
                width: _sliderValue,
              ),
            ),
          )
        ],
      ),
    );
  }
}
