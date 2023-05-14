/*
Initiation à Dart

Functions + Lambdas + Null Safety
*/

void main() {
  //Q1
  print(sayHello("John"));

  //Q2

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