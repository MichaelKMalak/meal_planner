import 'package:flutter/material.dart';
import 'package:meal_planner/application/dependency_injection/setup_dependency_injection.dart';
import 'package:meal_planner/data/models/day_with_meals_model.dart';
import 'package:meal_planner/data/models/meal_model.dart';
import 'package:meal_planner/data/repository/meals_repository.dart';

class MealsProvider with ChangeNotifier {
  late List<MealModel> meals;
  late List<DayWithMealsModel> scheduledDailyMeals;

  void init() {
    final repository = sl<MealsRepository>();
    meals = repository.getAllMeals();
    scheduledDailyMeals = repository.getAllScheduledDailyMeals();
  }
}
