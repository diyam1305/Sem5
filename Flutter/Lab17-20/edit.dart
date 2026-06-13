import 'package:flutter/material.dart';
import 'package:lab17tolab20/student_model.dart';
import 'package:lab17tolab20/helper.dart';

class Edit extends StatefulWidget {
  const Edit({Key? key, required this.student}) : super(key: key);
  final Student student;
  @override
  _EditState createState() => _EditState();
}

class _EditState extends State<Edit> {
  TextEditingController _nameController = TextEditingController();
  TextEditingController _enrollmentNoController = TextEditingController();
  TextEditingController _semesterController = TextEditingController();
  TextEditingController _branchController = TextEditingController();
  TextEditingController _mobileController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController(text: widget.student.studentName);
    _enrollmentNoController = TextEditingController(
      text: widget.student.studentEnrollmentNO.toString(),
    );
    _semesterController = TextEditingController(text: widget.student.semester);
    _branchController = TextEditingController(text: widget.student.branch);
    _mobileController = TextEditingController(text: widget.student.mobile);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Edit Student'), backgroundColor: Colors.blue),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Form(
          child: Column(
            children: [
              TextFormField(
                controller: _nameController,
                decoration: InputDecoration(
                  labelText: 'Student Name',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 16),
              // TextFormField(
              //   controller: _enrollmentNoController,
              //   decoration: InputDecoration(
              //     labelText: 'Enrollment No',
              //     border: OutlineInputBorder(),
              //   ),
              //   enabled: false,
              // ),
              SizedBox(height: 16),
              TextFormField(
                controller: _semesterController,
                decoration: InputDecoration(
                  labelText: 'Semester',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 16),
              TextFormField(
                controller: _branchController,
                decoration: InputDecoration(
                  labelText: 'Branch',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 16),
              TextFormField(
                controller: _mobileController,
                decoration: InputDecoration(
                  labelText: 'Mobile',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 32),
              ElevatedButton(
                onPressed: _saveChanges,
                child: Text('Save Changes'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                  padding: EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _saveChanges() async {
    try {
      final updatedStudent = Student(
        studentName:
            _nameController.text.isNotEmpty
                ? _nameController.text
                : widget.student.studentName,
        studentEnrollmentNO: widget.student.studentEnrollmentNO,
        semester:
            _semesterController.text.isNotEmpty
                ? _semesterController.text
                : widget.student.semester,
        branch:
            _branchController.text.isNotEmpty
                ? _branchController.text
                : widget.student.branch,
        mobile:
            _mobileController.text.isNotEmpty
                ? _mobileController.text
                : widget.student.mobile,
        password: widget.student.password,
      );

      await Helper.instance.updateStudent(updatedStudent);

      if (mounted) {
        Navigator.pop(context);
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Student updated successfully!')),
        );
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text('Error updating student: $e')));
      }
    }
  }
}
