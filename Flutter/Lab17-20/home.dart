import 'package:flutter/material.dart';
import 'package:lab17tolab20/edit.dart';
import 'package:lab17tolab20/helper.dart';
import 'package:lab17tolab20/studentDetail.dart';
import 'package:lab17tolab20/student_model.dart';
import 'package:lab17tolab20/addStudent.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Helper dbhelper = Helper.instance;
  List<Student> students = [];
  bool isLoading = true;
  @override
  void initState() {
    super.initState();
    fetchStudents();
  }

  Future<void> fetchStudents() async {
    students = await dbhelper.getStudents();
    setState(() {
      students = students;
      isLoading = false;
    });
  }

  Future<void> deleteStudent(int enrollmentNo) async {
    await dbhelper.deleteStudent(enrollmentNo);
    await fetchStudents();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body:
          isLoading
              ? Center(child: CircularProgressIndicator())
              : students.isEmpty
              ? Center(child: Text('No Students Found'))
              : ListView.builder(
                itemCount: students.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: ListTile(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder:
                                (context) =>
                                    StudentDetail(student: students[index]),
                          ),
                        );
                      },
                      title: Text(students[index].studentName!),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Enrollment No: ${students[index].studentEnrollmentNO}',
                          ),
                          Text('Branch: ${students[index].branch}'),
                        ],
                      ),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          IconButton(
                            icon: Icon(Icons.edit),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder:
                                      (context) =>
                                          Edit(student: students[index]),
                                ),
                              );
                            },
                          ),
                          IconButton(
                            icon: Icon(Icons.delete),
                            onPressed: () {
                              showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return AlertDialog(
                                    title: Text('Confirm Deletion'),
                                    content: Text(
                                      'Are you sure you want to delete this student?',
                                    ),
                                    actions: [
                                      TextButton(
                                        onPressed: () {
                                          Navigator.of(context).pop();
                                        },
                                        child: Text('Cancel'),
                                      ),
                                      TextButton(
                                        onPressed: () {
                                          deleteStudent(
                                            students[index]
                                                .studentEnrollmentNO!,
                                          );
                                          Navigator.of(context).pop();
                                        },
                                        child: Text('Delete'),
                                      ),
                                    ],
                                  );
                                },
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => AddStudent()),
          );
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.blue,
        tooltip: 'Add New Student',
      ),
    );
  }
}
