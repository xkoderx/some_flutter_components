import 'package:flutter/material.dart';
import '../widgets/widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Card Widget')),
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          children: const [
            CustomCardType1(),
            SizedBox(height: 10),
            CustomCardType2(
              name: 'Karina moradita uwu',
              imageUrl:
                  'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2F1.bp.blogspot.com%2F-iq7O_6qyPp4%2FX4csMkPgjwI%2FAAAAAAAACSo%2FJ6Xk2Zvjl5YUDV3ohG24MQF8IJJyxwUgACLcBGAsYHQ%2Fs0%2F7e804495be63caeca4bf074c7fe76ac6.png&f=1&nofb=1',
            ),
            CustomCardType1(),
            SizedBox(height: 10),
            CustomCardType2(
              name: 'Karina azulita uwu',
              imageUrl:
                  'https://external-content.duckduckgo.com/iu/?u=http%3A%2F%2Fmlbb.mobacompanion.com%2Fwp-content%2Fuploads%2Fsites%2F2%2F2020%2F01%2Fkarina_shadow_blade.jpg&f=1&nofb=1',
            ),
            CustomCardType1(),
            SizedBox(height: 10),
            CustomCardType2(
              //name: 'Selena uwu',
              imageUrl: 'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fwallpapercave.com%2Fwp%2Fwp8002660.jpg&f=1&nofb=1',),
          ],
        ));
  }
}
