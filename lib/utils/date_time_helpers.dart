import 'package:intl/intl.dart';

extension DateTimeExtensions on DateTime {
  DateTime getDayOnly() => DateTime(year, month, day);

  int countDaysTillDate(DateTime another) {
    final today = getDayOnly();
    final theOtherDay = another.getDayOnly();
    return (theOtherDay.difference(today).inHours / 24).round();
  }

  String format() => DateFormat.MMMMEEEEd().format(this);
}
