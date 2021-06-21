import 'package:provider/provider.dart';

import 'meals_provider.dart';

List<ChangeNotifierProvider<MealsProvider>> getProviders() {
  return [
    ChangeNotifierProvider(create: (_) => MealsProvider()..init()),
  ];
}
