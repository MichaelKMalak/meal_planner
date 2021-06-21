import 'package:meal_planner/data/models/day_with_meals_model.dart';
import 'package:meal_planner/data/models/meal_model.dart';
import 'package:meal_planner/presentation/features/home_page/widgets/day_with_meals_widget.dart';

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
  List<DayWithMealsModel> getAllScheduledMeals() {
    final meals = getAllMeals();
    return [
      DayWithMealsModel(
        day: DateTime.now(),
        meals: meals.sublist(0, 0),
      ),
      DayWithMealsModel(
        day: DateTime.now().add(const Duration(days: 2)),
        meals: meals.sublist(2, 4),
      ),
      DayWithMealsModel(
        day: DateTime.now().add(const Duration(days: 4)),
        meals: meals.sublist(5, 7),
      ),
      DayWithMealsModel(
        day: DateTime.now().add(const Duration(days: 5)),
        meals: meals.sublist(0, 6),
      ),
    ];
  }
}
