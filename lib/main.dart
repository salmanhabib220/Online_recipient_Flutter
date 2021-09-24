import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'Pages/splashscreen.dart';

void main(List<String> args) {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  final Future<FirebaseApp> _initialization = Firebase.initializeApp();
  
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
      home: FutureBuilder(
          future: _initialization,
          builder: (context, snapshot) {
            if (snapshot.hasError) {
              print("Error");
            }
            if (snapshot.connectionState == ConnectionState.done) {
              return Splashscreen();
            }
            return CircularProgressIndicator();
          }),



      // initialRoute: '/',
      // routes: {
      //   '/': (context) => Splashscreen(),
      //   MyRoutes.welcomescreen: (context) => Welcomescreen(),
      //   MyRoutes.loginRoute: (context) => LoginPage(),
      //   MyRoutes.signupPageRoute: (context) => SignupPage(),
      //   MyRoutes.homePage: (context) => HomePage(),
      // },
    );
  }
}
