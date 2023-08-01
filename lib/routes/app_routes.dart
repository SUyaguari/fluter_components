import 'package:fluter_components/models/models.dart';
import 'package:flutter/material.dart';

import '../screens/screens.dart';

class AppRoutes {
  static const initualRoute = 'Home';

  static final menuOptions = <MenuOption>[
    // MenuOption(
    //     route: 'Home',
    //     icon: Icons.home_rounded,
    //     name: 'Home Screen',
    //     screen: const HomeScreen()),
    MenuOption(
        route: 'listview1',
        icon: Icons.view_list_rounded,
        name: 'List View 1 Screen',
        screen: const ListView1Screen()),
    MenuOption(
        route: 'listview2',
        icon: Icons.view_list_rounded,
        name: 'List View 2 Screen',
        screen: const ListView2Screen()),
    MenuOption(
        route: 'cardview',
        icon: Icons.sd_card_outlined,
        name: 'Card Screen',
        screen: const CardScreen()),
    MenuOption(
        route: 'alertview',
        icon: Icons.dangerous_outlined,
        name: 'Alert Screen',
        screen: const AlertScreen()),
    MenuOption(
        route: 'avatarscreen',
        icon: Icons.supervised_user_circle_outlined,
        name: 'Contact Screen',
        screen: const AvatarScreen()),
    MenuOption(
        route: 'animatedscreen',
        icon: Icons.play_circle_outline_outlined,
        name: 'Animated Container Screen',
        screen: const AnimatedScreen()),
    MenuOption(
        route: 'inputsscreen',
        icon: Icons.input,
        name: 'Inputs Screen',
        screen: const InputsScreen()),
        MenuOption(
        route: 'sliderscreen',
        icon: Icons.slow_motion_video_outlined,
        name: 'Slider Screen',
        screen: const SliderScreen()),
        MenuOption(
        route: 'listviewbuilderscreen',
        icon: Icons.build_circle_outlined,
        name: 'List View Builder Screen',
        screen: const ListViewBuilderScreen()),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};

    appRoutes.addAll({'Home': (BuildContext context) => const HomeScreen()});

    for (final option in menuOptions) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }

    return appRoutes;
  }

  // static Map<String, Widget Function(BuildContext)> routes = {
  //   'listview1': (BuildContext context) => const ListView1Screen(),
  //   'listview2': (BuildContext context) => const ListView2Screen(),
  //   'home': (BuildContext context) => const HomeScreen(),
  // };

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(builder: (context) => const AlertScreen());
  }
}
