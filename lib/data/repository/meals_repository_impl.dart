import 'package:meal_planner/data/data_source/data_source.dart';
import 'package:meal_planner/data/models/day_with_meals_model.dart';
import 'package:meal_planner/data/models/meal_model.dart';
import 'package:meal_planner/utils/utils.dart';

import 'meals_repository.dart';

class MealsRepositoryImpl extends MealsRepository {
  DataSource dataSource;

  MealsRepositoryImpl({
    required this.dataSource,
  });

  @override
  List<MealModel> getAllMeals() {
    return dataSource.getAllMeals();
  }

  Map<DateTime, DayWithMealsModel> filterScheduledMealsWithinUpcomingWeek() {
    final scheduledMealsWithinOneWeek = dataSource
        .getAllScheduledDailyMeals()
        .where((e) => DateTime.now().countDaysTillDate(e.day) < 7)
        .where((e) => DateTime.now().countDaysTillDate(e.day) >= 0);

    return Map.fromIterable(
      scheduledMealsWithinOneWeek,
      key: (e) => (e as DayWithMealsModel).day.getDayOnly(),
      value: (e) => e,
    );
  }

  @override
  Map<DateTime, DayWithMealsModel> getAllScheduledMealsForUpcomingWeek() {
    final scheduledMealsWithinOneWeekMap =
        filterScheduledMealsWithinUpcomingWeek();

    final upcomingWeekList = List.generate(
      7,
      (index) => DateTime.now().add(Duration(days: index)).getDayOnly(),
    );

    final upcomingWeekScheduledDays = upcomingWeekList
        .map((e) =>
            scheduledMealsWithinOneWeekMap[e] ??
            DayWithMealsModel(day: e, meals: []))
        .toList();

    return Map.fromIterable(
      upcomingWeekScheduledDays,
      key: (e) => e.day,
      value: (e) => e,
    );
  }
}
