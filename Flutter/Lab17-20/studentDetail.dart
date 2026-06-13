import 'package:flutter/material.dart';
import 'package:lab17tolab20/student_model.dart';

class StudentDetail extends StatelessWidget {
  const StudentDetail({Key? key, required this.student}) : super(key: key);
  final Student student;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(student.studentName ?? "Student Detail")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Center(
              child: CircleAvatar(
                radius: 50,
                child: Text(
                  student.studentName != null && student.studentName!.isNotEmpty
                      ? student.studentName![0].toUpperCase()
                      : '?',
                  style: TextStyle(fontSize: 40),
                ),
              ),
            ),
            SizedBox(height: 24),
            detailRow("Name", student.studentName),
            detailRow("Enrollment No", student.studentEnrollmentNO?.toString()),
            detailRow("Semester", student.semester),
            detailRow("Branch", student.branch),
            detailRow("Mobile", student.mobile),
          ],
        ),
      ),
    );
  }

  Widget detailRow(String label, String? value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          Text(
            "$label: ",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          Expanded(child: Text(value ?? '-', style: TextStyle(fontSize: 18))),
        ],
      ),
    );
  }
}
