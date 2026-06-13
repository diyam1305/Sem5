import 'package:flutter/material.dart';
import 'package:lab17tolab20/helper.dart';
import 'package:lab17tolab20/student_model.dart';

class AddStudent extends StatefulWidget {
  const AddStudent({Key? key}) : super(key: key);

  @override
  _AddStudentState createState() => _AddStudentState();
}

class _AddStudentState extends State<AddStudent> {
  final formKey = GlobalKey<FormState>();
  bool passtog = true;
  bool passtog2 = true;
  TextEditingController name = TextEditingController();
  TextEditingController mo = TextEditingController();
  TextEditingController enr = TextEditingController();
  TextEditingController sem = TextEditingController();
  TextEditingController branch = TextEditingController();
  TextEditingController pass = TextEditingController();
  TextEditingController cpass = TextEditingController();

  void submitForm() async {
    if (formKey.currentState!.validate()) {
      Student student = Student(
        studentName: name.text,
        studentEnrollmentNO: int.parse(enr.text),
        semester: sem.text,
        branch: branch.text,
        mobile: mo.text,
        password: pass.text,
      );

      await Helper.instance.insertStudent(student);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Add Student")),
      body: Form(
        key: formKey,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(12),
                child: TextFormField(
                  controller: name,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please enter name";
                    }
                    final ptn = RegExp(r'^[a-zA-Z][a-zA-Z0-9_]{4,19}$');
                    if (!ptn.hasMatch(value)) {
                      return "Invalid name";
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    labelText: "Name",
                    hintText: "Name",
                    prefixIcon: Icon(Icons.person),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.all(10),
                child: TextFormField(
                  controller: mo,
                  keyboardType: TextInputType.phone,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please enter mobile number";
                    }
                    final ptn = RegExp(r'^[6-9]\d{9}$');
                    if (!ptn.hasMatch(value)) {
                      return "Invalid Mobile Number";
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    labelText: "Mobile Number",
                    hintText: "Mobile Number",
                    prefixIcon: Icon(Icons.phone),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.all(10),
                child: TextFormField(
                  controller: enr,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please enter enrollment number";
                    }
                    final ptn = RegExp(r'^\d{11}$');
                    if (!ptn.hasMatch(value)) {
                      return "Invalid enrollment number";
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    labelText: "Enrollment Number",
                    hintText: "Enrollment Number",
                    prefixIcon: Icon(Icons.numbers),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.all(10),
                child: TextFormField(
                  controller: sem,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please enter semester";
                    }
                    final ptn = RegExp(r'^\d{1}$');
                    if (!ptn.hasMatch(value)) {
                      return "Invalid semester";
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    labelText: "Semester",
                    hintText: "Semester",
                    prefixIcon: Icon(Icons.keyboard),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.all(10),
                child: TextFormField(
                  controller: branch,
                    decoration: InputDecoration(
                    labelText: "Branch",
                    hintText: "Branch",
                    prefixIcon: Icon(Icons.abc),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.all(10),
                child: TextFormField(
                  controller: pass,
                  obscureText: passtog,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please enter password";
                    }
                    final ptn = RegExp(
                      r'^(?=.*[A-Za-z])(?=.*\d)(?=.*[@$!%*#?&]).{8,}$',
                    );
                    if (!ptn.hasMatch(value)) {
                      return "Invalid Password";
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    labelText: "Password",
                    hintText: "Password",
                    prefixIcon: Icon(Icons.password),
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          passtog = !passtog;
                        });
                      },
                      icon:
                          passtog
                              ? Icon(Icons.visibility_off)
                              : Icon(Icons.visibility),
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.all(10),
                child: TextFormField(
                  controller: cpass,
                  obscureText: passtog2,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please confirm your password";
                    }
                    final ptn = RegExp(
                      r'^(?=.*[A-Za-z])(?=.*\d)(?=.*[@$!%*#?&]).{8,}$',
                    );
                    if (value != pass.text) {
                      return "Password and Confirm Password must be same";
                    }
                    if (!ptn.hasMatch(value)) {
                      return "Invalid Password";
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    labelText: "Confirm Password",
                    hintText: "Confirm Password",
                    prefixIcon: Icon(Icons.password),
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          passtog2 = !passtog2;
                        });
                      },
                      icon:
                          passtog2
                              ? Icon(Icons.visibility_off)
                              : Icon(Icons.visibility),
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 15),
              ElevatedButton(
                onPressed: submitForm,
                child: Text(
                  "Add Student",
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
