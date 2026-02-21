extension DatetimeExtension on DateTime {
  bool isToday() {
    final now = DateTime.now();
    return year == now.year && month == now.month && day == now.day;
  }

  String customFormatDate() {
    return '${day.toString().padLeft(2, '0')}/${month.toString().padLeft(2, '0')}';
  }

  String customWeekday() {
    const days = ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun'];
    return days[weekday - 1];
  }
}
