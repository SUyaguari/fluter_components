import 'package:flutter/material.dart';

class ListView1Screen extends StatelessWidget {
  final options = const [
    "Un nuevo ritual",
    "SANTIAGOO!",
    "LA Buena Vibra la buena energia"
  ];
  const ListView1Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('ListView Tipo 1'),
        ),
        body: ListView(
          children: [
            ...options
                .map((e) => ListTile(
                      trailing: const Icon(Icons.keyboard_arrow_right),
                      title: Text(e),
                    ))
                .toList()
          ],
        ));
  }
}
