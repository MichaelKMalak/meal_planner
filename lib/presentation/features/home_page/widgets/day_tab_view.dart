import 'package:meal_planner/application/providers/meals_provider.dart';
import 'package:meal_planner/data/models/day_with_meals_model.dart';
import 'package:meal_planner/presentation/shared_widgets/styled_button.dart';
import 'package:meal_planner/presentation/styles/styles.dart';

import '../../../core_flutter_packages.dart';
import 'day_with_meals_widget.dart';

class DayTabView extends StatefulWidget {
  const DayTabView({Key? key}) : super(key: key);

  @override
  _DayTabViewState createState() => _DayTabViewState();
}

class _DayTabViewState extends State<DayTabView> {
  late DayWithMealsModel dayWithMeals;
  DateTime selectedDay = DateTime.now();

  @override
  Widget build(BuildContext context) {
    dayWithMeals = context.watch<MealsProvider>().getScheduledMealsByDateTime(
          selectedDay,
        );
    final locals = AppLocalizations.of(context);

    return ListView(
      padding: EdgeInsets.all(Insets.xl),
      children: [
        StyledButton(
          onPressed: () => _selectDate(context),
          child: Text(locals!.changeDate),
        ),
        const SizedBox(height: 15),
        const Divider(),
        const SizedBox(height: 15),
        DayWithMealsWidget(
          dayWithMealsModel: dayWithMeals,
        ),
      ],
    );
  }

  Future<void> _selectDate(BuildContext context) async {
    const DAY_IN_WEEK = 7;
    final picked = await showDatePicker(
      context: context,
      initialDate: selectedDay,
      firstDate: DateTime.now(),
      lastDate: DateTime.now().add(
        const Duration(days: DAY_IN_WEEK - 1),
      ),
    );
    if (picked != null && picked != dayWithMeals.day) {
      updateSelectedDay(picked);
    }
  }

  void updateSelectedDay(DateTime dateTime) {
    setState(() {
      selectedDay = dateTime;
    });
  }
}
