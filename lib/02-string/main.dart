/*
Initiation à Dart

String

*/

import 'dart:math';

void main()
{
//Q1
  print("Hello world !");

//Q2
  String message = "Hello 2 !";
  print(message);

//Q3
  String hello = "Hello";
  String world = "World";
  print('$hello $world'); //interpolation

//Q4
  print(hello + ' ' + world);

//Q5
  print(message.substring(0,5));

//Q6
  String msg = "Hello, World!";
  print(msg.length);

//Q7
  String welcome = "Hello World !";
  print(welcome.toUpperCase().replaceAll("E", "3").replaceAll("L", "1").replaceAll("O", "8").replaceFirst(" ", ", "));


//Q8
  welcome = "Hello World";
  final List<String> list = List.unmodifiable(welcome.split(" ")); //immutable String list
  print(list);
  //list.add("value");

//Q9
  String pwd = "";
  pwd == "" ? print("Mot de passe absent") : print("Mot de passe fourni");
  
//Q10
  var email = "john@doe.com";
  print("Email " + (email.contains("@") && email.contains(".") ? "valide" : "incorrect"));
  
}
