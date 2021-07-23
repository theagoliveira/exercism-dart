class WordCount {
  Map<String, int> countWords(String s) {
    List<String> word_list = s
        .toLowerCase()
        .replaceAll(RegExp(r"[^\w']+$"), '')
        .replaceAll(RegExp(r"^[^\w']+"), '')
        .replaceAll(
            RegExp(
                r"(?<![a-z])'(?=[a-z])|(?<=[a-z])'(?![a-z])|(?<![a-z])'(?![a-z])"),
            '')
        .split(RegExp(r"[^\w']+"));
    Map<String, int> result = {};
    word_list.forEach((e) {
      result[e] = (result[e] ?? 0) + 1;
    });
    return result;
  }
}
