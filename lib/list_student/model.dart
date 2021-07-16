class Student {
  int studentId;
  String studentName;
  String studentGender;
  String studentBirthOfDate;
  String studentContact;

  Student(
      {required this.studentId,
      required this.studentName,
      required this.studentGender,
      required this.studentBirthOfDate,
      required this.studentContact});

  factory Student.fromJson(Map<String, dynamic> json) {
    return Student(
      studentId: json['studentId'],
      studentName: json['studentName'],
      studentGender: json['studentGender'],
      studentBirthOfDate: json['studentBirthOfDate'] ?? '',
      studentContact: json['studentContact'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['studentId'] = this.studentId;
    data['studentName'] = this.studentName;
    data['studentGender'] = this.studentGender;
    data['studentBirthOfDate'] = this.studentBirthOfDate;
    data['studentContact'] = this.studentContact;
    return data;
  }
}
