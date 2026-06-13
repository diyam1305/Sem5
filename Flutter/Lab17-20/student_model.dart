class Student {
  int? studentId;
  String? studentName;
  int? studentEnrollmentNO;
  String? semester;
  String? branch;
  String? mobile;
  String? password;

  Student({
    this.studentName,
    this.studentEnrollmentNO,
    this.semester,
    this.branch,
    this.mobile,
    this.password,
  });

  Map<String, dynamic> toMap() {
    return {
      'studentName': studentName,
      'studentEnrollmentNO': studentEnrollmentNO,
      'semester': semester,
      'branch': branch,
      'mobile': mobile,
      'password': password,
    };
  }

  factory Student.fromMap(Map<String, dynamic> map) {
    return Student(
      studentName: map['studentName'],
      studentEnrollmentNO: map['studentEnrollmentNO'],
      semester: map['semester'],
      branch: map['branch'],
      mobile: map['mobile'],
      password: map['password'],
    );
  }
}
