// class Student {
//   int studentId;
//   String studentName;
//   String studentGender;
//   String studentBirthOfDate;
//   String studentContact;
//
//   Student(
//       {required this.studentId,
//       required this.studentName,
//       required this.studentGender,
//       required this.studentBirthOfDate,
//       required this.studentContact});
//
//   factory Student.fromJson(Map<String, dynamic> json) {
//     return Student(
//       studentId: json['studentId'],
//       studentName: json['studentName'],
//       studentGender: json['studentGender'],
//       studentBirthOfDate: json['studentBirthOfDate'] ?? '',
//       studentContact: json['studentContact'],
//     );
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['studentId'] = this.studentId;
//     data['studentName'] = this.studentName;
//     data['studentGender'] = this.studentGender;
//     data['studentBirthOfDate'] = this.studentBirthOfDate;
//     data['studentContact'] = this.studentContact;
//     return data;
//   }
// }
//

class Student {
  final int stuId;
  final String stuFname;
  final String stuLname;
  final String stuSex;
  final String stuDob;
  final String stuPhone;
  final String stuAdd;
  final int stuYear;
  final int guaId;
  final Null gua;
  // final List<Null> attendances;
  // final List<Null> marks;

  Student({
    required this.stuId,
    required this.stuFname,
    required this.stuLname,
    required this.stuSex,
    required this.stuDob,
    required this.stuPhone,
    required this.stuAdd,
    required this.stuYear,
    required this.guaId,
    required this.gua,
    // required this.attendances,
    // required this.marks
  });

  factory Student.fromJson(Map<String, dynamic> json) {
    return Student(
      stuId: json['stuId'],
      stuFname: json['stuFname'],
      stuLname: json['stuLname'],
      stuSex: json['stuSex'],
      stuDob: json['stuDob'],
      stuPhone: json['stuPhone'],
      stuAdd: json['stuAdd'],
      stuYear: json['stuYear'],
      guaId: json['guaId'],
      gua: json['gua'],
      // attendances: json['attendances'],
      //  marks: json['marks']
      //       if (json['attendances'] != null) {
      //     attendances = new List<Null>();
      //     json['attendances'].forEach((v) {
      //       attendances.add(new Null.fromJson(v));
      //     });
      //   }
      //   if (json['marks'] != null) {
      //     marks = new List<Null>();
      //     json['marks'].forEach((v) {
      //       marks.add(new Null.fromJson(v));
      //     });
    );
  }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['stuId'] = this.stuId;
//     data['stuFname'] = this.stuFname;
//     data['stuLname'] = this.stuLname;
//     data['stuSex'] = this.stuSex;
//     data['stuDob'] = this.stuDob;
//     data['stuPhone'] = this.stuPhone;
//     data['stuAdd'] = this.stuAdd;
//     data['stuYear'] = this.stuYear;
//     data['guaId'] = this.guaId;
//     data['gua'] = this.gua;
//     if (this.attendances != null) {
//       data['attendances'] = this.attendances.map((v) => v.toJson()).toList();
//     }
//     if (this.marks != null) {
//       data['marks'] = this.marks.map((v) => v.toJson()).toList();
//     }
//     return data;
//   }
}
