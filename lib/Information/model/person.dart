class Person {
  int id;
  String name;
  int age;
  String sex;
  String photo;

  Person(
      {required this.id,
      required this.name,
      required this.age,
      required this.sex,
      required this.photo});

  factory Person.fromJson(Map<String, dynamic> json) {
    return Person(
        id: json['id'],
        name: json['name'],
        age: json['age'],
        sex: json['sex'],
        photo: json['photo']);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['age'] = this.age;
    data['sex'] = this.sex;
    data['photo'] = this.photo;
    return data;
  }
}
