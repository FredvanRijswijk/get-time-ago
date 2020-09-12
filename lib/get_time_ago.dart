import 'package:intl/intl.dart';

class TimeAgo {
  static String getTimeAgo(DateTime dateTime) {
    var elapsed =
        DateTime.now().millisecondsSinceEpoch - dateTime.millisecondsSinceEpoch;

    final num seconds = elapsed / 1000;
    final num minutes = seconds / 60;
    final num hours = minutes / 60;
    final num days = hours / 24;
    final date = DateFormat.yMMMd().format(dateTime);

    String message;
    if (seconds < 59) {
      message = "${seconds.round()} sec ago";
    } else if (minutes < 59) {
      message = "${minutes.round()} min ago";
    } else if (minutes < 119) {
      message = "${hours.round()} hour ago";
    } else if (hours < 24) {
      message = "${hours.round()} hours ago";
    } else if (hours < 48) {
      message = "1 day ago";
    } else if (days < 7) {
      message = "${days.round()} days ago";
    } else {
      message = "$date";
    }

    return message;
  }
}
