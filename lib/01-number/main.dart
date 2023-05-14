/*
Initiation à Dart

int, double

*/

var IND = 1;
sep()
{
  var SEP = "-------------- Q$IND --------------";
  print(SEP);
  IND ++;
}

void main() {
  //Q1
  sep();
  int price1 = 1;
  num price2 = 2.5;
  print(price1);
  print(price2);

  sep();
  //Q2
  var sum = price1 + price2;
  print(sum);

  sep();
  //Q3
  print(sum.runtimeType);

  sep();
  //Q4
  print(sum.round());
  print(sum.round().runtimeType);

  sep();
  //Q5
  String strSeven = "7";
  int numSeven = int.parse(strSeven);
  print(numSeven);
}
