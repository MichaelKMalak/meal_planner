import 'package:meal_planner/application/providers/meals_provider.dart';
import 'package:meal_planner/presentation/styles/styles.dart';

import '../../../core_flutter_packages.dart';
import 'day_with_meals_widget.dart';

class WeekTabView extends StatelessWidget {
  const WeekTabView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final days = context.watch<MealsProvider>().scheduledDailyMeals;

    return ListView.separated(
      padding: EdgeInsets.all(Insets.xl),
      itemCount: days.length,
      itemBuilder: (_, i) {
        return DayWithMealsWidget(dayWithMealsModel: days[i]);
      },
      separatorBuilder: (_, __) {
        return Column(children: [
          const SizedBox(height: 15),
          const Divider(),
          const SizedBox(height: 15),
        ],);
      },
    );
  }
}
