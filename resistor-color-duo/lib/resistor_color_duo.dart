class ResistorColorDuo {
  List<String> colors = [
    'black',
    'brown',
    'red',
    'orange',
    'yellow',
    'green',
    'blue',
    'violet',
    'grey',
    'white'
  ];

  int value(List<String> l) {
    int res = 0;
    for (var i = 1, j = 1; i >= 0; i--, j *= 10) {
      res += colors.indexOf(l[i]) * j;
    }
    return res;
  }
}
