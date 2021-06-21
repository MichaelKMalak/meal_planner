import 'package:flutter/material.dart';
import 'package:meal_planner/presentation/features/home_page/home_page.dart';
import 'package:meal_planner/presentation/features/add_meal_to_day_page/add_meal_to_day_page.dart';

import 'route_paths.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case RoutePaths.homePage:
        return _navigate(const HomePage());
      case RoutePaths.addMealToDayPage:
        return _navigate(
          AddMealToDayPage(
            day: routeSettings.arguments! as DateTime,
          ),
        );
      default:
        return _navigate(const HomePage());
    }
  }

  static MaterialPageRoute _navigate(Widget widget) {
    return MaterialPageRoute<dynamic>(builder: (context) => widget);
  }
}
