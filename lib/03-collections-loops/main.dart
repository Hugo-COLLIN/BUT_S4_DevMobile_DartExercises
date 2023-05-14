/*
Initiation à Dart

List, Set, Map et Loops

*/

void main ()
{
  //Q1
  List<String> planets = ["Terre", "Mars", "Mercure", "Venus", "Saturne", "Neptune", "Uranus", "Jupiter"];
  // planets.sort();
  // print(planets);
  print(planets..sort()); //method cascades

  //Q2
  for (var x in planets)
    print(x.toUpperCase());

  //Q3
  int i = 0;
  while (i < planets.length) {
    print(planets[i].substring(0, 1));
    i ++;
  }

  //Q4
  int j = 0;
  do {
    print('$j - ' + planets[j]);
    j ++;
  }
  while (j < planets.length);

  //Q5
  var vowels = ['a', 'e', 'i', 'o', 'u', 'y'];
  for (var p in planets)
  {
    var pLast = p.substring(p.length - 1);
    if (vowels.contains(pLast))
      print(pLast);
  }

  //Q6
  planets.add("Pluton");
  print(planets);

  //Q7 (cf. class Planet)
  Planet mercure = Planet("Mercure", 91.69);
  Planet saturne = Planet("Saturne", 1275);
  Planet neptune = Planet("Neptune", 4351.40);
  Planet jupiter = Planet("Jupiter", 628.73);
  Planet mars = Planet("Mars", 78.34);
  Planet venus = Planet("Venus", 41.40);
  Planet uranus = Planet("Uranus", 2723.95);

  List<Planet> planetList = [mercure, saturne, neptune, jupiter, mars, venus, uranus];
  planetList.sort((a, b) => a.distanceFromEarth.compareTo(b.distanceFromEarth));
  planetList.forEach((element) {
    print(element.name + " : " + element.distanceFromEarth.toString());
  });
}

//Q7
class Planet {
  String name = "";
  double distanceFromEarth = double.infinity;

  Planet(String name, double distanceFromEarth)
  {
    this.name = name;
    this.distanceFromEarth = distanceFromEarth;
  }
}