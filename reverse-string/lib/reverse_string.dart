String reverse(String s) {
  // Put your code here
  String aux = "";
  for (var i = s.length - 1; i >= 0; i--) {
    aux += s[i];
  }

  return aux;
}
