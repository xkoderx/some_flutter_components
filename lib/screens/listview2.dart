import 'package:flutter/material.dart';

class ListView2Screen extends StatelessWidget {
  final opciones = ['Superman', 'Mario Bros', 'Batman'];

  ListView2Screen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('List View 2'),
        ),
        body: ListView.separated(
          itemBuilder: (context, i) => ListTile(
            leading: const Icon(
              Icons.abc_outlined,
              color: Colors.indigo,
            ),
            title: Text(opciones[i]),
            subtitle: const Text('Subtitulo'),
            trailing: const Icon(
              Icons.arrow_forward_ios_outlined,
              color: Colors.indigo,
            ),
            onTap: (){},
          ),
          itemCount: opciones.length,
          separatorBuilder: (context, index) => const Divider(),
        ));
  }
}
