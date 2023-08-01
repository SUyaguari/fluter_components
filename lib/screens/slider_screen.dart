import 'package:fluter_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _sliderValue = 0;
  bool _sliderEnable = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Sliders y Checs'),
        ),
        body: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            const Text('El papucho de Pepe Madero',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            Slider.adaptive(
                value: _sliderValue,
                min: 0,
                max: 1000,
                activeColor: AppTheme.primary,
                divisions: 20,
                onChanged:  _sliderEnable ? 
                (value) {
                  _sliderValue = value;
                  setState(() {});
                } : null),
            // Checkbox(
            //   value: _sliderEnable,
            //   onChanged: (value) {
            //     _sliderEnable = value ?? true;
            //     setState(() {
                  
            //     });
            //   },
            // ),
            CheckboxListTile.adaptive(value: _sliderEnable, 
            title: _sliderEnable ? const Text('Click para desabilitar') : const Text('Click para habilitar la vista de papi Madero'),
            activeColor: AppTheme.primary,
            onChanged: (value) => setState(() {
              _sliderEnable = value ?? true;
            })),

            // Switch(value: _sliderEnable, onChanged: (value) => setState(() {
            //   _sliderEnable = value;
            // })),

            SwitchListTile.adaptive(value: _sliderEnable, title: _sliderEnable ? const Text('Click para desabilitar') : const Text('Click para habilitar la vista de papi Madero'),
            activeColor: AppTheme.primary,
            onChanged: (value) => setState(() {
              _sliderEnable = value;
            })),
            Expanded(
                child: SingleChildScrollView(
                    child: Image(
              image: const NetworkImage(
                  'https://scontent.fcue3-1.fna.fbcdn.net/v/t39.30808-6/245775250_431838171632815_2766206551058540364_n.jpg?_nc_cat=103&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeGl2VXSV6LdI9-Ox2-0KiYyLkpId8CRoDUuSkh3wJGgNdJaKNyXa6KoVnAIM_9zbc5FBAyE4q1PcEWAFtIhDveU&_nc_ohc=rQz5VepxRa4AX-lyZSm&_nc_ht=scontent.fcue3-1.fna&oh=00_AfDZ986Kn-XPaMa6gsH3SZ9Wc3s9hNDcq6YwEFJ_yhtbmw&oe=64ADA0D2'),
              fit: BoxFit.contain,
              width: _sliderValue,
            ))),
            const AboutListTile()
          ],
        ));
  }
}
