import 'package:flutter/material.dart';
import 'package:components2/router/app_routes.dart';
import 'package:components2/theme/theme.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Componentes en Flutter'),
        ),
        body: ListView.separated(
            itemBuilder: (context, i) => ListTile(
              leading: Icon(AppRoutes.menuopt[i].icon,color: AppTheme.primary,),
              title: Text(AppRoutes.menuopt[i].name),
              onTap: () => Navigator.pushNamed(context, AppRoutes.menuopt[i].route),
            ),
            separatorBuilder: (_,__)=> Divider(),
            itemCount: AppRoutes.menuopt.length));
  }
}
