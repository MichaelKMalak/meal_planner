import 'package:get_it/get_it.dart';
import 'package:meal_planner/data/data_source/static_data_source.dart';
import 'package:meal_planner/data/repository/meals_repository.dart';
import 'package:meal_planner/data/repository/meals_repository_impl.dart';

GetIt sl = GetIt.instance;

T getIts<T extends Object>() => sl.get<T>();

void setupDependencyInjection() {
  /// Data Sources
  sl..registerLazySingleton<StaticDataSource>(() => StaticDataSource());

  /// Repositories
  sl
    ..registerLazySingleton<MealsRepository>(
      () => MealsRepositoryImpl(
        dataSource: getIts<StaticDataSource>(),
      ),
    );
}
