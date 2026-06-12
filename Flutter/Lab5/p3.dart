import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Login_Screen extends StatefulWidget
{
  const Login_Screen({super.key});

  @override
  State<Login_Screen> createState() => _Login_ScreenState();
}

class _Login_ScreenState extends State<Login_Screen>
{
  final _formkey = GlobalKey<FormState>();
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Page'),
      ),
      body: Form(
        child: Column(
          children: [
            TextFormField(
              controller: usernameController,
              validator: (value)
                {
                  if(value == null || value.isEmpty)
                    {
                      return "Username is required";
                    }
                  return null;
                },
            ),
            TextFormField(
              controller: passwordController,
              validator: (value)
                {
                  if(value == null || value.isEmpty)
                  {
                    return "Password is required";
                  }
                  if(!RegExp(r'[A-Z a-z]').hasMatch(value))
                    {
                      return "Password must have one number, special character and a number";
                    }
                  return null;
                },
            ),
            ElevatedButton(onPressed: ()
            {
              if(_formkey.currentState!.validate())
                {
                  _formkey.currentState!.reset();
                }
            },child: Text('Submit', style: TextStyle(
              color: Colors.black,
            ),))
          ],
        ),
      ),
    );
  }
}
