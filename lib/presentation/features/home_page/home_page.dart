import 'widgets/day_tab_view.dart';
import '../../core_flutter_packages.dart';
import 'widgets/week_tab_view.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentTab = 0;

  final pages = const <Widget>[
    DayTabView(),
    WeekTabView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentTab],
      bottomNavigationBar: buildBottomNavigationBar(context),
    );
  }

  BottomNavigationBar? buildBottomNavigationBar(BuildContext context) {
    final locals = AppLocalizations.of(context);
    return locals == null
        ? null
        : BottomNavigationBar(
            currentIndex: currentTab,
            onTap: (int index) {
              setState(() {
                currentTab = index;
              });
            },
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: const Icon(Icons.add),
                label: locals.day,
              ),
              BottomNavigationBarItem(
                icon: const Icon(Icons.add),
                label: locals.week,
              ),
            ],
          );
  }
}
