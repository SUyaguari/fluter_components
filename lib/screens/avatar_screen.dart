import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
  const AvatarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Avatars'),
          actions: [
            Container(
              margin: const EdgeInsets.only(right: 5),
              child: CircleAvatar(
                child: const Text('SU'),
                backgroundColor: Colors.indigo[900],
              ),
            )
          ],
        ),
        body: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Hola chokocrispis',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                SizedBox(
                  height: 10,
                ),
                Center(
                    child: CircleAvatar(
                  maxRadius: 110,
                  backgroundImage: NetworkImage(
                    'https://i.pinimg.com/474x/67/02/6e/67026ec8647c10b0114b8ce9f5b579f9.jpg',
                  ),
                )),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'No hay titulo',
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Tampoco quiero escribir algo 😶',
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  '"Y todavía me duele,',
                  style: TextStyle(fontSize: 16, fontStyle: FontStyle.italic),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'me duele tanto, si se supone,',
                  style: TextStyle(fontSize: 16, fontStyle: FontStyle.italic),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'que ya me había acostumbrado"',
                  style: TextStyle(fontSize: 16, fontStyle: FontStyle.italic),
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            )
          ],
        ));
  }
}
