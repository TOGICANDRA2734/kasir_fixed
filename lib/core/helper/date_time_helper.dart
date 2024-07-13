import 'package:intl/intl.dart';

class DateTimeHelper{
  static String formatDateTimeFromString({required String dateTimeString, String format = 'd MMM yyyy'}){
    if(dateTimeString.isEmpty) return '';
    DateTime dateTime = DateTime.parse(dateTimeString);
    String formattedDate = DateFormat(format, 'id').format(dateTime);
    return formattedDate;
  }

  static String reformatDateTimeFromString({required String dateTimeString, required String formatFrom, String formatTo = 'd MMM yyyy'}){
    if(dateTimeString.isEmpty) return '';
    DateTime dateTime = DateFormat(formatFrom, 'id').parse(dateTimeString);
    String formattedDate = DateFormat(formatTo, 'id').format(dateTime);
    return formattedDate;
  }

  static String formatDateTime({required DateTime dateTime, String format = 'd MMM yyyy'}){
    String formattedDate = DateFormat(format, 'id').format(dateTime);
    return formattedDate;
  }
}