import 'package:flutter/material.dart';

enum Gender {male, female}


class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {

  final validate = GlobalKey<FormState>();
  final _uname = TextEditingController();
  final _email = TextEditingController();

  Gender? gender;
  bool agree = false;
  String? selectedCountry;
  List<String> countryList = ['India', 'USA', 'UK', 'Canada', 'Australia'];
  List<String> hobbies = ['Reading', 'Traveling', 'Gaming', 'Cooking'];
  Map<String, bool> hobbySelected = {
    'Reading': false,
    'Traveling': false,
    'Gaming': false,
    'Cooking': false,
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: validate,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                ),
                const SizedBox(height: 10),
                Text(
                  'Registration Screen',
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue[800],
                  ),
                ),

                const SizedBox(height: 10),
                TextFormField(
                  controller: _uname,
                  validator: (msg) {
                    if (msg == null || msg.isEmpty || msg.length < 7) {
                      return "Please enter valid username";
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    labelText: "User Name:",
                    hintText: "Enter your name",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    prefixIcon: const Icon(Icons.verified_user),
                  ),
                ),



                const SizedBox(height: 10),
                TextFormField(
                  controller: _email,
                  validator: (msg) {
                    if (msg == null || msg.isEmpty) {
                      return "Please enter email";
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    labelText: "Email:",
                    hintText: "Enter your email:",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    prefixIcon: const Icon(Icons.email),
                  ),
                ),
                const SizedBox(height: 16),



                Row(
                  children: [
                    Text("Gender:\n", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold,)),
                    Expanded(
                      child: RadioListTile(
                        title: const Text("Male"),
                        value: Gender.male,
                        groupValue: gender,
                        onChanged: (value) {
                          setState(() {
                            gender = value;
                          });
                        },
                      ),
                    ),
                    Expanded(
                      child: RadioListTile(
                        title: const Text("Female"),
                        value: Gender.female,
                        groupValue: gender,
                        onChanged: (value) {
                          setState(() {
                            gender = value;
                          });
                        },
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),



                DropdownButtonFormField(
                  decoration: InputDecoration(
                    labelText: 'Select Country',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    filled: true,
                    fillColor: Colors.white,
                  ),
                  items: countryList
                      .map((country) => DropdownMenuItem(
                    child: Text(country),
                    value: country,
                  ))
                      .toList(),
                  onChanged: (value) {
                    setState(() {
                      selectedCountry = value;
                    });
                  },
                  validator: (value) =>
                  value == null ? "Please select a country" : null,
                ),
                const SizedBox(height: 20),


                /// Hobbies Checkboxes
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Select Hobbies:",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
                ...hobbies.map((hobby) {
                  return CheckboxListTile(
                    title: Text(hobby),
                    value: hobbySelected[hobby],
                    onChanged: (value) {
                      setState(() {
                        hobbySelected[hobby] = value!;
                      });
                    },
                  );
                }).toList(),
                const SizedBox(height: 20),



                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      // Add your login logic here
                    },
                    child: Text('Register', style: TextStyle(color: Colors.white),),
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(vertical: 15),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      backgroundColor: Colors.blue[800],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}