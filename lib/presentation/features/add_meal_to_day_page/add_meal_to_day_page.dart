import 'package:meal_planner/application/providers/meals_provider.dart';
import 'package:meal_planner/data/models/meal_model.dart';
import 'package:meal_planner/presentation/styles/styles.dart';

import '../../core_flutter_packages.dart';
import 'widgets/add_meal_tile_widget.dart';

class AddMealToDayPage extends StatefulWidget {
  final DateTime day;

  const AddMealToDayPage({
    Key? key,
    required this.day,
  }) : super(key: key);

  @override
  _AddMealToDayPageState createState() => _AddMealToDayPageState();
}

class _AddMealToDayPageState extends State<AddMealToDayPage> {
  DateTime get day => widget.day;

  @override
  Widget build(BuildContext context) {
    final meals = context.watch<MealsProvider>().getMealListForDay(day);
    final locals = AppLocalizations.of(context);

    return Scaffold(
      appBar: AppBar(
        brightness: Brightness.dark,
        title: Text(locals!.addMeal),
      ),
      body: meals.isEmpty
          ? Text(locals.youHaveAddedAllTheMealsForTheSelectedDay)
          : ListView.separated(
              padding: EdgeInsets.all(Insets.xl),
              itemCount: meals.length,
              itemBuilder: (_, i) {
                final meal = meals[i];
                return AddMealTileWidget(
                  meal: meal,
                  onPressed: () {
                    onMealSelect(context, meal: meal);
                  },
                );
              },
              separatorBuilder: (_, __) {
                return const SizedBox(height: 20);
              },
            ),
    );
  }

  void onMealSelect(BuildContext context, {required MealModel meal}) {
    context.read<MealsProvider>().addMeal(meal: meal, day: day);
    Navigator.of(context).pop();
  }
}
