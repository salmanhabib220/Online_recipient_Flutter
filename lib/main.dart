import 'package:flutter/material.dart';
import 'package:project_no1/Pages/HomePage.dart';
import 'package:project_no1/Pages/loginPage.dart';
import 'package:project_no1/Pages/signupPage.dart';
import 'package:project_no1/Pages/splashscreen.dart';
import 'package:project_no1/Pages/welcomescreen.dart';
import 'package:project_no1/utils/routes.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        primaryColor: Colors.indigoAccent,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            primary: Colors.deepPurple,
          ),
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => Splashscreen(),
        MyRoutes.welcomescreen: (context) => Welcomescreen(),
        MyRoutes.loginRoute: (context) => LoginPage(),
        MyRoutes.signupPageRoute: (context) => SignupPage(),
        MyRoutes.homePage: (context) => HomePage(), 
      },
    );
  }
}
