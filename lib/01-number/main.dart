/*
Initiation à Dart

int, double

*/

void main() {
  //Q1
  int price1 = 1;
  num price2 = 2.5;
  print(price1);
  print(price2);

  //Q2
  var sum = price1 + price2;
  print(sum);

  //Q3
  print(sum.runtimeType);

  //Q4
  print(sum.round());
  print(sum.round().runtimeType);

  //Q5
  String strSeven = "7";
  int numSeven = int.parse(strSeven);
  print(numSeven);
}
