import 'package:meal_planner/data/models/day_with_meals_model.dart';
import 'package:meal_planner/data/models/meal_model.dart';

import '../../../core_flutter_packages.dart';
import 'day_with_meals_widget.dart';

class DayTabView extends StatelessWidget {
  const DayTabView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Text('change date'),
        DayWithMealsWidget(
          dayWithMealsModel: DayWithMealsModel(
            day: DateTime.now(),
            meals: [
              MealModel(title: 'title'),
            ],
          ),
        ),
      ],
    );
  }
}
