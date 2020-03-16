import 'package:intl/intl.dart';

abstract class DateFormats {
  static String shortUiDateTimeFormat = 'dd MMM yyyy, h:mm a';
  static String shortUiDateFormat = 'dd MMM yyyy';
  static String shortUiTimeFormat = 'h:mm a';
  static String longUiTineFormat = 'yyyy-MM-dd hh:mm:ss';
}

String formatDate(DateTime date, String format) {
  var formatter = new DateFormat(format);
  return formatter.format(date);
}
