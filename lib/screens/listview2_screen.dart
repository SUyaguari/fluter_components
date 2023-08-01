import 'package:flutter/material.dart';

class ListView2Screen extends StatelessWidget {
  final options = const [
    "Un nuevo ritual",
    "SANTIAGOO!",
    "LA Buena Vibra la buena energia"
  ];
  const ListView2Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView Tipo 2'),
      ),
      body: ListView.separated(
        itemCount: options.length,
        itemBuilder: (context, index) => ListTile(
          title: Text(options[index]),
          trailing: const Icon(
            Icons.keyboard_arrow_right,
            color: Colors.blueGrey,
          ),
          onTap: () {},
        ),
        separatorBuilder: (_, __) => const Divider(),
      ),
    );
  }
}
