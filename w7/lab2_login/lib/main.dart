import 'package:flutter/material.dart';
import 'package:lab2_login/pages/AboutPage.dart';
import 'package:lab2_login/pages/HomePage.dart';
import 'package:lab2_login/pages/LoginPage.dart';
import 'package:lab2_login/pages/RegisterPage.dart';
import 'package:lab2_login/pages/Launcher.dart';
import 'package:lab2_login/pages/ProfilePage.dart';
import 'package:lab2_login/pages/EditProfilePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => LoginPage(),
        '/login': (context) => LoginPage(),
        '/register': (context) => RegisterPage(),
        '/home': (context) => HomePage(),
        '/about': (context) => AboutPage(),
        '/profile': (context) => ProfilePage(),
        '/editProfile': (context) => EditProfilePage(),
        '/launcher': (context) => Launcher(),
      },
    );
  }
}
