import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';
import 'application/dependency_injection/setup_dependency_injection.dart';
import 'application/providers/_providers.dart';
import 'presentation/routes/route_generator.dart';
import 'presentation/routes/route_paths.dart';
import 'presentation/styles/app_theme.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() {
  /// Call this first to make sure we can make other system level calls safely
  WidgetsFlutterBinding.ensureInitialized();

  setupDependencyInjection();

  runApp(MyApp());
}

// ignore: use_key_in_widget_constructors
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: getProviders(),
      child: MaterialApp(
        title: 'Meal Planner App',
        theme: AppTheme.fromType(ThemeType.light).themeData,
        initialRoute: RoutePaths.homePage,
        onGenerateRoute: RouteGenerator.generateRoute,
        debugShowCheckedModeBanner: false,
        supportedLocales: const [Locale('en')],
        localizationsDelegates: getLocalizationsDelegates(),
      ),
    );
  }

  List<LocalizationsDelegate<dynamic>> getLocalizationsDelegates() {
    return const [
      AppLocalizations.delegate,
      GlobalMaterialLocalizations.delegate,
      GlobalWidgetsLocalizations.delegate,
      GlobalCupertinoLocalizations.delegate,
    ];
  }
}
