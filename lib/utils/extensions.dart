import 'package:intl/intl.dart';

String formatToSum(int number){

  // Convert the number to a string and reverse it
  String reversed = number.toString().split('').reversed.join();

  // Add a space every 3 digits
  String spaced = reversed.replaceAllMapped(RegExp(r'.{1,3}'), (match) => '${match.group(0)} ');

  // Reverse it back to get the final result
  String formatted = spaced.split('').reversed.join().trim();

  return formatted;
}

