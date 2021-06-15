import 'package:courseregistration/screens/HomePage.dart';
import 'package:courseregistration/screens/LandingPage/DesktopLandingPage.dart';
import 'package:courseregistration/screens/RegistrationPage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Registration',
      theme: ThemeData(
        textTheme: GoogleFonts.poppinsTextTheme(
          Theme.of(context).textTheme,
        ),
        primarySwatch: Colors.blue,
      ),
      home: DesktopLandingPage(),
    );
  }
}
