class Isogram {
  bool isIsogram(String s) {
    Iterable sr = s.toLowerCase().replaceAll(RegExp(r'( |-)'), '').runes;
    return sr.length == sr.toSet().length;
  }
}
