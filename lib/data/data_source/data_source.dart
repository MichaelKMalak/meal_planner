import 'package:meal_planner/data/models/day_with_meals_model.dart';
import 'package:meal_planner/data/models/meal_model.dart';

abstract class DataSource {
  List<MealModel> getAllMeals();
  List<DayWithMealsModel> getAllScheduledDailyMeals();
}
