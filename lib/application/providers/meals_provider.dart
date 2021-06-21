import 'package:flutter/material.dart';
import 'package:meal_planner/application/dependency_injection/setup_dependency_injection.dart';
import 'package:meal_planner/data/models/day_with_meals_model.dart';
import 'package:meal_planner/data/models/meal_model.dart';
import 'package:meal_planner/data/repository/meals_repository.dart';
import 'package:meal_planner/utils/utils.dart';

class MealsProvider with ChangeNotifier {
  late List<MealModel> _meals;
  late Map<DateTime, DayWithMealsModel> _scheduledDailyMealsMap;

  List<DayWithMealsModel> get scheduledDailyMeals =>
      _scheduledDailyMealsMap.values.toList();

  void init() {
    final repository = sl<MealsRepository>();
    _initMeals(repository);
    _initScheduledDailyMeals(repository);
  }

  void _initMeals(MealsRepository repository) {
    _meals = repository.getAllMeals();
  }

  void _initScheduledDailyMeals(MealsRepository repository) {
    _scheduledDailyMealsMap = repository.getAllScheduledMealsForUpcomingWeek();
  }

  void addMeal({
    required MealModel meal,
    required DateTime day,
  }) {
    final dayOnlyDate = day.getDayOnly();
    final dayWithMeal = getScheduledMealsByDateTime(dayOnlyDate);
    dayWithMeal.meals.add(meal);
    _scheduledDailyMealsMap.addAll({
      dayOnlyDate: dayWithMeal,
    });
    notifyListeners();
  }

  DayWithMealsModel getScheduledMealsByDateTime(DateTime day) {
    final dayOnlyDate = day.getDayOnly();
    var dayWithMeal = _scheduledDailyMealsMap[dayOnlyDate];
    if (dayWithMeal == null) {
      dayWithMeal = DayWithMealsModel(
        day: dayOnlyDate,
        meals: [],
      );
    }
    return dayWithMeal;
  }

  List<MealModel> getMealListForDay(DateTime day) {
    final dayWithMeals = getScheduledMealsByDateTime(day);
    final mealsForDay = dayWithMeals.meals;
    return List<MealModel>.from(_meals.except(mealsForDay));
  }
}
