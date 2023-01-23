import 'dart:io';

main() {
  stdout.write('enter time (example 23:59:59) : ');

  String? inputTime = stdin.readLineSync();
  List<String> splitedTime = inputTime!.split(':');
  List<int?> splitTime = splitedTime.map((e) => int.tryParse(e)).toList();
  int hour = splitTime[0]!;
  int minute = splitTime[1]!;
  int second = splitTime[2]!;

  Time time = Time(hour: hour, minute: minute, second: second);
  time.showTime();
}

class Time {
  int second;
  int minute;
  int hour;

  Time({required this.hour, required this.minute, required this.second});


  void showTime() {

    minute = minute + second ~/ 60;
    second = second % 60;
    hour = hour + (minute ~/ 60);
    minute = minute % 60;
    String showDayOrHour=  hour >= 24?'day':'hour';
    hour = hour > 24 ? hour ~/ 24 : hour% 24;

    print('$showDayOrHour:${getTime(hour)} m:${getTime(minute)} s:${getTime(second)}');
  }
}

String? getTime(int value) {
  String? val;
  if (value > 0 || value < 60) {
    Map map = {
      1: "یک",
      2: "دو",
      3: "سه",
      4: "چهار",
      5: "پنج",
      6: "شش",
      7: "هفت",
      8: "هشت",
      9: "نه",
      10: "ده",
      11: "یازده",
      12: "دوازده",
      13: "سیزده",
      14: "چهارده",
      15: "پانزده",
      16: "شانزده",
      17: "هفده",
      18: "هجده",
      19: "نوزده",
      20: "بیست",
      21: "بیست و یک",
      22: "بیست و دو",
      23: "بیست و سه",
      24: "بیست و چهار",
      25: "بیست و پنج",
      26: "بیست و شش",
      27: "بیست و هفت",
      28: "بیست و هشت",
      29: "بیست و نه",
      30: "سی",
      31: "سی و یک",
      32: "سی و دو",
      33: "سی و سه",
      34: "سی و چهار",
      35: "سی و پنج",
      36: "سی و شش",
      37: "سی و هفت",
      38: "سی و هشت",
      39: "سی و نه",
      40: "چهل",
      41: "چهل و یک",
      42: "چهل و دو",
      43: "چهل و سه",
      44: "چهل و چهار",
      45: "چهل و پنج",
      46: "چهل و شش",
      47: "چهل و هفت",
      48: "چهل و هشت",
      49: "چهل و نه",
      50: "پنجاه",
      51: "پنجاه و یک",
      52: "پنجاه و دو",
      53: "پنجاه و سه",
      54: "پنجاه و چهار",
      55: "پنجاه و پنج",
      56: "پنجاه و شش",
      57: "پنجاه و هفت",
      58: "پنجاه و هشت",
      59: "پنجاه و نه",
      60: "شصت",
    };
    val = map[value] ?? "not fond";
  }
  return val;
}
