class Person {
  String? name;
  int? age;
  String? sex;

  // Person({String? name, int? age, String? sex}) {
  //   this.name = name;
  //   this.age = age;
  //   this.sex = sex;
  // }

  Person({this.name, this.age, this.sex});
}

void main() {
  // Person p1 = new Person(name: "hi", age: 12, sex: "man");
  // Person p2 = new Person(sex: "man");
  // // p1.age = 14;
  // print(p1.age);
  // print(p2.age);

  Person p1 = Person(name: "meeju", age: 20, sex: "woman");
  Person p2 = Person(name: "hi");
  print(p2.age);
}
