class BeerSong {
  List<String> recite(int bottles, int verses) {
    List<String> res = [];
    String w;
    String p;
    String c;
    String c_upper;
    int i = 0;
    int j = bottles;

    while (i < 2 * verses) {
      if (i % 2 != 0) j = (j - 1) % 100;

      w = j == 1 ? '' : 's';
      c = j == 0 ? 'no more' : j.toString();

      if ((i % 2) == 0) {
        c_upper = "${c[0].toUpperCase()}${c.substring(1)}";
        res.add("${c_upper} bottle${w} of beer on the wall, " +
            "${c} bottle${w} of beer.");
      } else {
        if (j == 99) {
          res.add("Go to the store and buy some more");
        } else {
          p = j == 0 ? 'it' : 'one';
          res.add("Take ${p} down and pass it around");
        }
        res[res.length - 1] += ", ${c} bottle${w} of beer on the wall.";
        if (i != 2 * verses - 1) res.add('');
      }

      i++;
    }

    return res;
  }
}
