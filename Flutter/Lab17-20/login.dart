import 'package:flutter/material.dart';
import 'package:lab17tolab20/addStudent.dart';
import 'package:lab17tolab20/helper.dart';
import 'package:lab17tolab20/student_model.dart';
import 'package:lab17tolab20/home.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final formKey = GlobalKey<FormState>();
  bool passtog = true;
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  void login() async {
    if (formKey.currentState!.validate()) {
      String username = _usernameController.text;
      String password = _passwordController.text;
      Student? student = await Helper.instance.getStudentByName(username);
      if (student != null && student.password == password) {
       Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Home()),
                  );
      } else {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text('Invalid username or password')));
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Login')),
      body: Center(
        child: Form(
          key: formKey,
          child: Column(
            children: [
              Padding(padding: const EdgeInsets.all(10), child: TextFormField(
                controller: _usernameController,
               decoration: InputDecoration(
                    labelText: "Username",
                    hintText: "Username",
                    prefixIcon: Icon(Icons.person),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                  ),
              ),),
              Padding(padding: const EdgeInsets.all(10), child:TextFormField(
                controller: _passwordController,
                obscureText: passtog,
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
              ),),
              SizedBox(height: 20),
              ElevatedButton(onPressed: () => login(), child: Text('Login')),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AddStudent()),
                  );
                },
                child: Text('Dont have an account? Sign Up'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
