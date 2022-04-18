import 'package:flutter/material.dart';
import 'package:components2/models/models.dart';
import 'package:components2/screens/screens.dart';

class AppRoutes {
  static const initialRoute = 'home';
  static final menuopt = <MenuOpt>[
    // MenuOpt(
    //     route: 'home',
    //     icon: Icons.home,
    //     name: 'Home Screen',
    //     screen: HomeScreen()),
    MenuOpt(
        route: 'listview1',
        icon: Icons.list,
        name: 'List View 1',
        screen: ListView1Screen()),
    MenuOpt(
        route: 'listview2',
        icon: Icons.list,
        name: 'List View 2',
        screen: ListView2Screen()),
    MenuOpt(
        route: 'card',
        icon: Icons.card_giftcard_outlined,
        name: 'Card Screen',
        screen: CardScreen()),
    MenuOpt(
        route: 'alert',
        icon: Icons.notification_important,
        name: 'Alert Screen',
        screen: AlertScreen()),
    MenuOpt(
        route: 'avatar',
        icon: Icons.person,
        name: 'Avatar Screen',
        screen: AvatarScreen()),
    MenuOpt(
        route: 'animated',
        icon: Icons.animation,
        name: 'Animated Screen',
        screen: AnimatedScreen()),
    MenuOpt(
        route: 'inputs',
        icon: Icons.input,
        name: 'Inputs Screen',
        screen: InputsScreen()),
    MenuOpt(
        route: 'sliders',
        icon: Icons.slideshow_outlined,
        name: 'Slider && Checks',
        screen: SliderScreen()),
    MenuOpt(
        route: 'listviewbuilder',
        icon: Icons.build_circle,
        name: 'InfiniteScroll && PullToRefresh',
        screen: ListViewBuilderScreen()),
  ];
  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    appRoutes.addAll({'home': ((context) => HomeScreen())});
    for (var opt in menuopt) {
      appRoutes.addAll({opt.route: ((context) => opt.screen)});
    }
    return appRoutes;
  }

  // static Map<String, Widget Function(BuildContext)> routes = {
  //   'home': (context) => HomeScreen(),
  //   'listview1': (_) => ListView1Screen(),
  //   'listview2': (_) => ListView2Screen(),
  //   'card': (_) => CardScreen(),
  //   'alert': (_) => AlertScreen(),
  // };
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(builder: (_) => AlertScreen());
  }
}
