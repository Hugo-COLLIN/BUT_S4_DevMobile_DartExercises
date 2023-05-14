/*
Initiation à Dart

String

*/

var IND = 1;
sep()
{
  var SEP = "-------------- Q$IND --------------";
  print(SEP);
  IND ++;
}

void main()
{
//Q1
  sep();
  print("Hello world !");

//Q2
  sep();
  String message = "Hello 2 !";
  print(message);

//Q3
  sep();
  String hello = "Hello";
  String world = "World";
  print('$hello $world'); //interpolation

//Q4
  sep();
  print(hello + ' ' + world);

//Q5
  sep();
  print(message.substring(0,5));

//Q6
  sep();
  String msg = "Hello, World!";
  print(msg.length);

//Q7
  sep();
  String welcome = "Hello World !";
  print(welcome.toUpperCase().replaceAll("E", "3").replaceAll("L", "1").replaceAll("O", "8").replaceFirst(" ", ", "));

//Q8
  sep();
  welcome = "Hello World";
  final List<String> list = List.unmodifiable(welcome.split(" ")); //immutable String list
  print(list);
  //list.add("value");

//Q9
  sep();
  String pwd = "";
  pwd == "" ? print("Mot de passe absent") : print("Mot de passe fourni");

//Q10
  sep();
  var email = "john@doe.com";
  print("Email " + (email.contains("@") && email.contains(".") ? "valide" : "incorrect"));
}
