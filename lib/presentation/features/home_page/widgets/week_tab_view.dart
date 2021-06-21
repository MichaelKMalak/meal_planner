import 'package:meal_planner/data/models/day_with_meals_model.dart';
import 'package:meal_planner/data/models/meal_model.dart';

import '../../../core_flutter_packages.dart';
import 'day_with_meals_widget.dart';

class WeekTabView extends StatelessWidget {
  const WeekTabView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final days = [
      DayWithMealsModel(
        day: DateTime.now(),
        meals: [
          MealModel(title: 'title 1'),
        ],
      ),
      DayWithMealsModel(
        day: DateTime.now(),
        meals: [
          MealModel(title: 'title 2'),
        ],
      ),
      DayWithMealsModel(
        day: DateTime.now(),
        meals: [
          MealModel(title: 'title 2'),
        ],
      ),
      DayWithMealsModel(
        day: DateTime.now(),
        meals: [
          MealModel(title: 'title 2'),
        ],
      ),
      DayWithMealsModel(
        day: DateTime.now(),
        meals: [
          MealModel(title: 'title 2'),
        ],
      ),
      DayWithMealsModel(
        day: DateTime.now(),
        meals: [
          MealModel(title: 'title 2'),
        ],
      ),
      DayWithMealsModel(
        day: DateTime.now(),
        meals: [
          MealModel(title: 'title 2'),
        ],
      ),
      DayWithMealsModel(
        day: DateTime.now(),
        meals: [
          MealModel(title: 'title 2'),
        ],
      ),
      DayWithMealsModel(
        day: DateTime.now(),
        meals: [
          MealModel(title: 'title 2'),
        ],
      ),
      DayWithMealsModel(
        day: DateTime.now(),
        meals: [
          MealModel(title: 'title 2'),
        ],
      ),
      DayWithMealsModel(
        day: DateTime.now(),
        meals: [
          MealModel(title: 'title 2'),
        ],
      ),
      DayWithMealsModel(
        day: DateTime.now(),
        meals: [
          MealModel(title: 'title 2'),
        ],
      ),
      DayWithMealsModel(
        day: DateTime.now(),
        meals: [
          MealModel(title: 'title 2'),
        ],
      ),
      DayWithMealsModel(
        day: DateTime.now(),
        meals: [
          MealModel(title: 'title 2'),
        ],
      ),
      DayWithMealsModel(
        day: DateTime.now(),
        meals: [
          MealModel(title: 'title 2'),
        ],
      ),
      DayWithMealsModel(
        day: DateTime.now(),
        meals: [
          MealModel(title: 'title 2'),
        ],
      ),
      DayWithMealsModel(
        day: DateTime.now(),
        meals: [
          MealModel(title: 'title 2'),
        ],
      ),
      DayWithMealsModel(
        day: DateTime.now(),
        meals: [
          MealModel(title: 'title 2'),
        ],
      ),
      DayWithMealsModel(
        day: DateTime.now(),
        meals: [
          MealModel(title: 'title 2'),
        ],
      ),
      DayWithMealsModel(
        day: DateTime.now(),
        meals: [
          MealModel(title: 'title 2'),
        ],
      ),
      DayWithMealsModel(
        day: DateTime.now(),
        meals: [
          MealModel(title: 'title 2'),
        ],
      ),
      DayWithMealsModel(
        day: DateTime.now(),
        meals: [
          MealModel(title: 'title 2'),
        ],
      ),
      DayWithMealsModel(
        day: DateTime.now(),
        meals: [
          MealModel(title: 'title 2'),
        ],
      ),
      DayWithMealsModel(
        day: DateTime.now(),
        meals: [
          MealModel(title: 'title 2'),
        ],
      ),
      DayWithMealsModel(
        day: DateTime.now(),
        meals: [
          MealModel(title: 'title 2'),
        ],
      ),
    ];

    return ListView.separated(
      itemCount: days.length,
      itemBuilder: (_, i) {
        return DayWithMealsWidget(dayWithMealsModel: days[i]);
      },
      separatorBuilder: (_, __) {
        return Divider();
      },
    );
  }
}
