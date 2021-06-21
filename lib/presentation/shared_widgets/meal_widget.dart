import 'package:meal_planner/data/models/meal_model.dart';
import 'package:meal_planner/presentation/styles/styles.dart';

import '../core_flutter_packages.dart';

class MealWidget extends StatelessWidget {
  final MealModel meal;

  const MealWidget({Key? key, required this.meal}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;
    return SizedBox(
      width: double.maxFinite,
      child: Card(
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: Corners.lgCircularBorder,
        ),
        color: Colors.grey.shade400,
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: Insets.xl,
            vertical: Insets.med,
          ),
          child: Center(
            child: Text(
              meal.title,
              style: theme.subtitle2,
            ),
          ),
        ),
      ),
    );
  }
}
