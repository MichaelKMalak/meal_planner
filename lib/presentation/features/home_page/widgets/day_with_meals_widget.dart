import 'package:meal_planner/data/models/day_with_meals_model.dart';
import 'package:meal_planner/data/models/meal_model.dart';
import 'package:meal_planner/presentation/routes/route_paths.dart';
import 'package:meal_planner/presentation/shared_widgets/meal_widget.dart';
import 'package:meal_planner/presentation/shared_widgets/styled_button.dart';
import 'package:meal_planner/utils/utils.dart';

import '../../../core_flutter_packages.dart';

class DayWithMealsWidget extends StatelessWidget {
  final DayWithMealsModel dayWithMealsModel;
  const DayWithMealsWidget({Key? key, required this.dayWithMealsModel})
      : super(key: key);

  DateTime get day => dayWithMealsModel.day;
  List<MealModel> get meals => dayWithMealsModel.meals;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;
    final locals = AppLocalizations.of(context);

    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: Text(
                day.format(),
                style: theme.subtitle1,
              ),
            ),
            StyledButton(
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  RoutePaths.addMealToDayPage,
                  arguments: day,
                );
              },
              child: Text(locals!.addMeal),
            ),
          ],
        ),
        const SizedBox(height: 10),
        meals.isEmpty
            ? Text(locals.youDidntAddAnyMealsYet)
            : const SizedBox.shrink(),
        ...meals.map((meal) => MealWidget(meal: meal)).toList(),
      ],
    );
  }
}
