/*
Initiation à Dart

String

*/


var sep = "----------------------------";

void main()
{
//Q1
  print("Hello world !");

  print(sep);
//Q2
  String message = "Hello 2 !";
  print(message);

  print(sep);
//Q3
  String hello = "Hello";
  String world = "World";
  print('$hello $world'); //interpolation

  print(sep);
//Q4
  print(hello + ' ' + world);

  print(sep);
//Q5
  print(message.substring(0,5));

  print(sep);
//Q6
  String msg = "Hello, World!";
  print(msg.length);

  print(sep);
//Q7
  String welcome = "Hello World !";
  print(welcome.toUpperCase().replaceAll("E", "3").replaceAll("L", "1").replaceAll("O", "8").replaceFirst(" ", ", "));

  print(sep);
//Q8
  welcome = "Hello World";
  final List<String> list = List.unmodifiable(welcome.split(" ")); //immutable String list
  print(list);
  //list.add("value");

  print(sep);
//Q9
  String pwd = "";
  pwd == "" ? print("Mot de passe absent") : print("Mot de passe fourni");

  print(sep);
//Q10
  var email = "john@doe.com";
  print("Email " + (email.contains("@") && email.contains(".") ? "valide" : "incorrect"));
  
}
