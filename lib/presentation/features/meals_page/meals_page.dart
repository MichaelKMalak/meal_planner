import 'package:meal_planner/data/models/meal_model.dart';

import '../../core_flutter_packages.dart';

class MealsPage extends StatefulWidget {
  const MealsPage({Key? key}) : super(key: key);

  @override
  _MealsPageState createState() => _MealsPageState();
}

class _MealsPageState extends State<MealsPage> {
  @override
  Widget build(BuildContext context) {
    final meals = [
      MealModel(title: 'title'),
      MealModel(title: 'title'),
    ];

    return ListView.separated(
      itemCount: meals.length,
      itemBuilder: (_, i) {
        return Text(meals[i].title);
      },
      separatorBuilder: (_, __) {
        return Divider();
      },
    );
  }
}
