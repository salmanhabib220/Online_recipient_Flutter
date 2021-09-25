// ignore_for_file: unnecessary_null_comparison

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:project_no1/Pages/loginPage.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  String name = "";
  bool changeButton = false;
  String _emial = "";
  String _pass = "";
  final _formKey = GlobalKey<FormState>();
  final FirebaseAuth _auth = FirebaseAuth.instance;
  String pattern = r'\w+@\w+\.\W+';
  String errorMessage = "";

  moveToHome(BuildContext context) async {
    UserCredential result = await _auth.createUserWithEmailAndPassword(
        email: _emial, password: _pass);
    if (_formKey.currentState!.validate() && result != null) {
      try {
        setState(() {
          changeButton = true;
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return LoginPage();
          }));
        });
        errorMessage = " ";
      } on FirebaseAuthException catch (error) {
        errorMessage = error.message!;
      }
      setState(() {
        changeButton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    User? user = FirebaseAuth.instance.currentUser;
    RegExp regex = RegExp(pattern);
    return Material(
        child: SingleChildScrollView(
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            Image.asset(
              "images/Login_image.png",
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: 20.0,
            ),
            Center(
              child: Text(
                "Welcome $name",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
              child: Column(
                children: [
                  //Name TExt Field
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: "Enter Full Name",
                      labelText: "Name",
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Name cannot be empty";
                      }
                      return null;
                    },
                    onChanged: (value) {
                      name = value;
                      setState(() {});
                    },
                  ),
                  //Email or User Name Text Field
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: "Enter Email",
                      labelText: "Email",
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Email cannot be empty";
                      }
                      if (!regex.hasMatch(value)) {
                        return "Invalid Email Address";
                      }

                      return null;
                    },
                    onChanged: (value) {
                      setState(() {
                        _emial = value;
                      });
                    },
                  ),
                  //Password Text Field
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "Enter password",
                      labelText: "Password",
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Password cannot be empty";
                      } else if (value.length < 6) {
                        return "Password length should be atleast 6";
                      }
                      return null;
                    },
                    onChanged: (value) {
                      setState(() {
                        _pass = value;
                      });
                    },
                  ),
                  Center(
                    child: Text(errorMessage),
                  ),
                  SizedBox(
                    height: 40.0,
                  ),
                  SizedBox(
                    height: 50,
                    width: 200,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        alignment: Alignment.center,
                      ),
                      onPressed: () {
                        moveToHome(context);
                      },
                      child: Text(
                        "Create an Account",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Already have an account ?",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return LoginPage();
                          }));
                        },
                        child: Text(
                          "Login",
                          style: TextStyle(
                            color: Colors.deepPurple,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}
