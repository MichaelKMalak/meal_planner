import 'package:meal_planner/data/models/day_with_meals_model.dart';
import 'package:meal_planner/data/models/meal_model.dart';

import '../../../core_flutter_packages.dart';

class DayWithMealsWidget extends StatelessWidget {
  final DayWithMealsModel dayWithMealsModel;
  const DayWithMealsWidget({Key? key, required this.dayWithMealsModel})
      : super(key: key);

  DateTime get day => dayWithMealsModel.day;
  List<MealModel> get meals => dayWithMealsModel.meals;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: Text(
                day.toIso8601String(),
              ),
            ),
            Text('btn'),
          ],
        ),
        ...meals.map((meal) => Text(meal.title)).toList(),
      ],
    );
  }
}
