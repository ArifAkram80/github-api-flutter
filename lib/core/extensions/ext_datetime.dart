import 'package:intl/intl.dart';

extension ExtDateTime on DateTime {
  String toDateAndTime12h() =>
      DateFormat("dd MMM yyyy hh:mm a").format(toLocal());
  String toDate() => DateFormat("dd MMM yyyy").format(toLocal());
}
