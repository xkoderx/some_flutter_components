import 'package:flutter/material.dart';

class ListView1Screen extends StatelessWidget {
  final opciones = ['Superman', 'Mario Bros', 'Batman'];

  ListView1Screen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('List View 1'),
        ),
        body: ListView(
          children: [
            ...opciones
                .map((opciones) => ListTile(
                      title: Text(opciones),
                      leading: const Icon(Icons.leaderboard),
                      trailing: const Icon(Icons.arrow_forward_ios_outlined),
                    ))
                .toList(),
            const Divider(),
          ],
        ));
  }
}
