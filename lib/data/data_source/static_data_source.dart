import 'package:meal_planner/data/models/day_with_meals_model.dart';
import 'package:meal_planner/data/models/meal_model.dart';
import 'package:meal_planner/utils/utils.dart';

import 'data_source.dart';

class StaticDataSource extends DataSource {
  @override
  List<MealModel> getAllMeals() {
    return const [
      MealModel(title: 'Stir fry'),
      MealModel(title: 'Pasta & salad'),
      MealModel(title: 'Beans on toast'),
      MealModel(title: 'Blueberry Smoothie'),
      MealModel(title: 'Veggie chilli'),
      MealModel(title: 'Chicken curry'),
      MealModel(title: 'Stuffed bell peppers'),
      MealModel(title: 'Halloumi burger'),
      MealModel(title: 'Corn chowder'),
    ];
  }

  @override
  List<DayWithMealsModel> getAllScheduledDailyMeals() {
    final meals = getAllMeals();
    return [
      DayWithMealsModel(
        day: DateTime.now().getDayOnly().subtract(const Duration(days: 3)),
        meals: meals.sublist(0, 3),
      ),
      DayWithMealsModel(
        day: DateTime.now().getDayOnly().subtract(const Duration(days: 1)),
        meals: meals.sublist(3, 5),
      ),
      DayWithMealsModel(
        day: DateTime.now().getDayOnly(),
        meals: meals.sublist(0, 1),
      ),
      DayWithMealsModel(
        day: DateTime.now().getDayOnly().add(const Duration(days: 2)),
        meals: meals.sublist(2, 4),
      ),
      DayWithMealsModel(
        day: DateTime.now().getDayOnly().add(const Duration(days: 4)),
        meals: meals.sublist(5, 7),
      ),
      DayWithMealsModel(
        day: DateTime.now().getDayOnly().add(const Duration(days: 5)),
        meals: meals.sublist(0, 6),
      ),
      DayWithMealsModel(
        day: DateTime.now().getDayOnly().add(const Duration(days: 6)),
        meals: meals.sublist(2, 4),
      ),
      DayWithMealsModel(
        day: DateTime.now().getDayOnly().add(const Duration(days: 7)),
        meals: meals.sublist(3, 4),
      ),
      DayWithMealsModel(
        day: DateTime.now().getDayOnly().add(const Duration(days: 8)),
        meals: meals.sublist(5, 6),
      ),
      DayWithMealsModel(
        day: DateTime.now().getDayOnly().add(const Duration(days: 9)),
        meals: meals.sublist(2, 6),
      ),
      DayWithMealsModel(
        day: DateTime.now().getDayOnly().add(const Duration(days: 12)),
        meals: meals.sublist(0, 3),
      ),
    ];
  }
}
