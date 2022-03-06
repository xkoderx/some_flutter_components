import 'package:flutter/material.dart';

class HomeTemp extends StatelessWidget {
  HomeTemp({Key? key}) : super(key: key);

  final opc = ['Uno', 'Dos', 'Tres', 'Cuatro', 'Cinco'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes Temp'),
        centerTitle: true,
      ),
      body: ListView(
        //children: _crearItems(),
        children: _crearItemsFacil(),
      ),
    );
  }

  List<Widget> _crearItems() {
    List<Widget> lista = [];
    for (String opt in opc) {
      final tempWidget = ListTile(
        title: Text(opt),
      );
      lista
        ..add(tempWidget)
        ..add(Divider(
          color: Colors.black,
          height: 5.0,
        ));
    }
    return lista;
  }

  List<Widget> _crearItemsFacil() {
    return opc
        .map((item) => Column(
              children: [
                ListTile(
                  title: Text(item +' %& '),
                  subtitle: Text('Subtitulo'),
                  leading: Icon(Icons.account_balance_wallet),
                  trailing: Icon(Icons.keyboard_arrow_right),
                  onTap: (){},
                ),
                Divider(
                  thickness: 1.0,
                  color: Colors.black,
                ),
              ],
            ))
        .toList();
  }
}
