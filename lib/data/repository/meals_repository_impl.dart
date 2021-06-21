import 'package:meal_planner/data/data_source/data_source.dart';
import 'package:meal_planner/data/models/day_with_meals_model.dart';
import 'package:meal_planner/data/models/meal_model.dart';

import 'meals_repository.dart';

class MealsRepositoryImpl extends MealsRepository {
  DataSource dataSource;

  MealsRepositoryImpl({
    required this.dataSource,
  });

  @override
  List<MealModel> getAllMeals() {
    return dataSource.getAllMeals();
  }

  @override
  List<DayWithMealsModel> getAllScheduledDailyMeals() {
    return dataSource.getAllScheduledDailyMeals();
  }
}
