// class Person {
//   int id;
//   String name;
//   int age;
//   String sex;
//   String photo;
//
//   Person(
//       {required this.id,
//       required this.name,
//       required this.age,
//       required this.sex,
//       required this.photo});
//
//   factory Person.fromJson(Map<String, dynamic> json) {
//     return Person(
//         id: json['id'],
//         name: json['name'],
//         age: json['age'],
//         sex: json['sex'],
//         photo: json['photo']);
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['id'] = this.id;
//     data['name'] = this.name;
//     data['age'] = this.age;
//     data['sex'] = this.sex;
//     data['photo'] = this.photo;
//     return data;
//   }
// }

class Info {
  final int id;
  final String context;
  final String date;
  final String image;

  Info(
      {required this.id,
      required this.context,
      required this.date,
      required this.image});

  factory Info.fromJson(Map<String, dynamic> json) {
    return Info(
      id: json['id'],
      context: json['context'] ?? '',
      date: json['date'],
      image: json['image'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['context'] = this.context;
    data['date'] = this.date;
    data['image'] = this.image;
    return data;
  }
}
