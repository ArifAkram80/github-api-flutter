import 'package:intl/intl.dart';

extension ExtDateTime on DateTime {
  String toDateAndTime12h() =>
      DateFormat("dd MMM yyyy hh:mm a").format(toLocal());
  String toDate() => DateFormat("dd MMM yyyy").format(toLocal());

  String toTimeWeekdayDate() {
    DateTime now = DateTime.now();
    if (difference(now).inDays == 0) {
      return DateFormat("hh:mm a").format(toLocal());
    } else if (difference(now).inDays.abs() <= 1) {
      return "Yesterday";
    } else if (difference(now).inDays.abs() <= 6) {
      return DateFormat("EEE").format(toLocal());
    } else {
      return toDate();
    }
  }
}
