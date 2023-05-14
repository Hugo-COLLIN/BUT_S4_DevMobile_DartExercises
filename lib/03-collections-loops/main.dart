/*
Initiation à Dart

List, Set, Map et Loops

*/
var sep = "----------------------------";

void main ()
{
  //Q1
  List<String> planets = ["Terre", "Mars", "Mercure", "Venus", "Saturne", "Neptune", "Uranus", "Jupiter"];
  // planets.sort();
  // print(planets);
  print(planets..sort()); //method cascades

  print(sep);
  //Q2
  for (var x in planets)
    print(x.toUpperCase());

  print(sep);
  //Q3
  int i = 0;
  while (i < planets.length) {
    print(planets[i].substring(0, 1));
    i ++;
  }

  print(sep);
  //Q4
  int j = 0;
  do {
    print('$j - ' + planets[j]);
    j ++;
  }
  while (j < planets.length);

  print(sep);
  //Q5
  var vowels = ['a', 'e', 'i', 'o', 'u', 'y'];
  for (var p in planets)
  {
    var pLast = p.substring(p.length - 1);
    if (vowels.contains(pLast))
      print(pLast);
  }

  print(sep);
  //Q6
  planets.add("Pluton");
  print(planets);

  print(sep);
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


  print(sep);
  //Q8
  var apollo = {
    "07_1969": "Apollo 11",
    "11_1969" : "Apollo 12",
    "02_1971" : "Apollo 14",
    "07_1971" : "Apollo 15",
    "04_1972" : "Apollo 16",
    "12_1972" : "Apollo 17"
  };
  print(apollo);
  print(apollo["07_1971"]);
  print(apollo.keys);

  print(sep);
  //Q9
  print("Before : " + apollo["07_1969"].toString());
  apollo["07_1969"] = "Bloup";
  print("After : " + apollo["07_1969"].toString());
  print(apollo);

  print(sep);
  //Q10
  var sun = SolarSystemElement("Sun", Kind.star);
  var earth = SolarSystemElement("Earth", Kind.planet);
  var moon = SolarSystemElement("Moon", Kind.satellite);
  var pluton = SolarSystemElement("Pluton", Kind.satellite);

  var listSolarSystem = {sun, earth, moon, pluton};

  listSolarSystem.forEach((element) {
    print(element.name + " : " + element.kind.toString());
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

//Q10
enum Kind {
  planet,
  star,
  satellite,
  asteroid,
  comet
}

class SolarSystemElement {
  String name = "";
  Kind? kind;

  SolarSystemElement(String name, Kind kind)
  {
    this.name = name;
    this.kind = kind;
  }
}