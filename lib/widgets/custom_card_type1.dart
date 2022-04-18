import 'package:flutter/material.dart';
import 'package:components2/theme/theme.dart';

class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          const ListTile(
            leading: Icon(
              Icons.abc,
              color: AppTheme.primary,
            ),
            title: Text('Soy un titulo'),
            subtitle: Text('Soy un subtitulo'),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(onPressed: (){}, child: const Text('Si')),
                TextButton(onPressed: (){}, child: const Text('No')),
              ],
            ),
          )
        ],
      ),
    );
  }
}
