import 'package:flutter/material.dart';
import 'package:project_no1/Pages/loginPage.dart';
import 'package:project_no1/Pages/signupPage.dart';

class Welcomescreen extends StatelessWidget {
  const Welcomescreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image(
            image: AssetImage("images/undraw_logistics_x4dc.png"),
            fit: BoxFit.fill,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: SafeArea(
              child: Column(
                children: [
                  Spacer(),
                  //   Image.asset("images/undraw_logistics_x4dc.png"),
                  //  Text("Logo", style: TextStyle(
                  //    color: Colors.white,
                  //    fontWeight: FontWeight.bold,
                  //    fontSize: 40,
                  //  ),
                  //  ),
                  Spacer(),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => SignupPage()));
                      },
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.deepPurple,
                      ),
                      child: Text("Sign Up"),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 16.0),
                    // padding: EdgeInsets.all(16.0),
                    child: SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LoginPage()));
                        },
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.transparent,
                          shape: RoundedRectangleBorder(
                            side: BorderSide(color: Colors.deepPurple),
                          ),
                        ),
                        child: Text("Sign In"),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
