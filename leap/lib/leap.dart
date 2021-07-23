class Leap {
  bool leapYear(int year) {
    bool c1 = year % 4 == 0;
    bool c2 = year % 100 != 0;
    bool c3 = year % 400 == 0;
    return c1 && (c2 || (!c2 && c3));
  }
}
