import 'package:meal_planner/data/models/meal_model.dart';

import '../../core_flutter_packages.dart';

class SelectMealPage extends StatefulWidget {
  final DateTime day;

  const SelectMealPage({
    Key? key,
    required this.day,
  }) : super(key: key);

  @override
  _SelectMealPageState createState() => _SelectMealPageState();
}

class _SelectMealPageState extends State<SelectMealPage> {
  DateTime get day => widget.day;

  @override
  Widget build(BuildContext context) {
    final meals = [
      MealModel(title: 'title'),
      MealModel(title: 'title'),
    ];

    return Scaffold(
      body: ListView.separated(
        itemCount: meals.length,
        itemBuilder: (_, i) {
          final meal = meals[i];
          return InkWell(
            onTap: () {
              onMealSelect(meal);
            },
            child: Text(meal.title),
          );
        },
        separatorBuilder: (_, __) {
          return Divider();
        },
      ),
    );
  }

  void onMealSelect(meal) {
    Navigator.of(context).pop();
  }
}
