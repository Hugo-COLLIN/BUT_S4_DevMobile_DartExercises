/*
Initiation à Dart

Functions + Lambdas + Null Safety
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
  print(sayHello("John"));

  //Q2
  sep();
  print(sum(2,3.5));

  //Q3
  sep();
  print(sumMany([3.5, 8, 640.2, 36]));

  //Q4
  sep();
  sumAndPrint(3, 2);
  sumAndPrint(8, 9, true);

  //Q5
  sep();

}

//Q1
sayHello(String to)
{
  return "Hello, $to!";
}

//Q2
num sum(num n1, num n2)
{
  return n1 + n2;
}

//Q3
num sumMany(List<num> numbers)
{
  num res = 0;
  numbers.forEach((element) {
    res += element;
  });
  return res;
}

//Q4
void sumAndPrint(num n1, num n2, [bool shouldPrint = false])
{
  num result = n1 + n2;
  print((shouldPrint ? "$n1 + $n2 = " : "") + result.toString());
}

//Q5
sumAndFormat(num n1, num n2, [var ft])
{
  num result = n1 + n2;

  var res;
  switch (ft)
  {
    case "int":
      res = result.round();
      break;
    case "double":
      res = result.toDouble();
      break;
    case null:
      res = result;
      break;
  }
  return res + " : " + res.runtimeType;
}