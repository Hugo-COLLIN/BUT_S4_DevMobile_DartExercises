/*
Initiation à Dart

int, double

*/

var sep = "----------------------------";

void main() {
  //Q1
  int price1 = 1;
  num price2 = 2.5;
  print(price1);
  print(price2);

  print(sep);
  //Q2
  var sum = price1 + price2;
  print(sum);

  print(sep);
  //Q3
  print(sum.runtimeType);

  print(sep);
  //Q4
  print(sum.round());
  print(sum.round().runtimeType);

  print(sep);
  //Q5
  String strSeven = "7";
  int numSeven = int.parse(strSeven);
  print(numSeven);
}
