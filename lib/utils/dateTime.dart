final List<String> MONTHS_OF_YEAR = [
  "January",
  "February",
  "March",
  "April",
  "May",
  "June",
  "July",
  "August",
  "September",
  "October",
  "November",
  "December",
];

String getMonthOfNumber(int number) {
  return MONTHS_OF_YEAR[number - 1];
}

int getNumberOfMonth(String month) {
  return MONTHS_OF_YEAR.indexOf(month) + 1;
}

int daysInMonth(int monthNumber) {
  if ([1, 3, 5, 7, 8, 10, 12].contains(monthNumber)) return 31;
  if ([4, 6, 9, 11].contains(monthNumber)) return 30;
  return 29;
}