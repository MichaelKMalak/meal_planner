import 'package:flutter/material.dart';
import 'package:meal_planner/presentation/features/home_page/home_page.dart';
import 'package:meal_planner/presentation/features/select_meal_page/select_meal_page.dart';

import 'route_paths.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case RoutePaths.homePage:
        return _navigate(const HomePage());
      case RoutePaths.mealsPage:
        return _navigate(
          SelectMealPage(
            day: routeSettings.arguments! as DateTime,
          ),
        );
      default:
        return _navigate(const HomePage());
    }
  }

  static PageRouteBuilder<dynamic> _navigate(Widget widget) {
    return PageRouteBuilder(
        pageBuilder: (BuildContext context, Animation<double> animation,
            Animation<double> secAnimation) {
          return widget;
        },
        transitionDuration: const Duration(milliseconds: 200),
        transitionsBuilder: (
          BuildContext context,
          Animation<double> animation,
          Animation<double> secAnimation,
          Widget child,
        ) {
          return FadeTransition(
            opacity: animation,
            child: child,
          );
        });
  }
}
