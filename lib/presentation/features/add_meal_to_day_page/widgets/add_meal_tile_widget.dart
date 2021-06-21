import 'package:meal_planner/data/models/meal_model.dart';
import 'package:meal_planner/presentation/shared_widgets/styled_button.dart';
import 'package:meal_planner/presentation/styles/styles.dart';

import '../../../core_flutter_packages.dart';

class AddMealTileWidget extends StatelessWidget {
  final MealModel meal;
  final VoidCallback? onPressed;

  const AddMealTileWidget({
    Key? key,
    required this.meal,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final locals = AppLocalizations.of(context);
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
          child: Row(
            children: [
              Expanded(
                child: Text(
                  meal.title,
                  style: theme.subtitle1,
                ),
              ),
              StyledButton(
                onPressed: onPressed,
                child: Text(locals!.add),
              )
            ],
          ),
        ),
      ),
    );
  }
}
