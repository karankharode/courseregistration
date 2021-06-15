import 'package:animate_do/animate_do.dart';
import 'package:courseregistration/screens/RegistrationPage.dart';
import 'package:courseregistration/widgets/back_widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MobileLogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _MobileLoginCompleteStructure();
  }
}

class _MobileLoginCompleteStructure extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          _MobileLoginTop(),
          SizedBox(height: 100),
          FadeIn(
            delay: Duration(milliseconds: 1000),
            child: Text(
              'Signin',
              style: TextStyle(color: Colors.black, fontSize: 40, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          FadeInLeft(
            delay: Duration(milliseconds: 1000),
            child: Container(height: 5, width: 50, color: Colors.blueAccent),
          ),
          SizedBox(height: 30),
          FadeInUp(
            delay: Duration(milliseconds: 1500),
            child: Container(
              padding: EdgeInsets.all(20),
              height: 250,
              width: 300,
              decoration: BoxDecoration(color: Colors.white, boxShadow: [BoxShadow()]),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                        icon: Icon(Icons.person, size: 30), hintText: 'Username ...'),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration:
                        InputDecoration(icon: Icon(Icons.lock, size: 30), hintText: 'Password ...'),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Container(
                      height: 40,
                      width: 200,
                      child: MaterialButton(
                          color: Colors.blueAccent,
                          child: Text(
                            'LOGIN',
                            style: TextStyle(color: Colors.white),
                          ),
                          shape: StadiumBorder(),
                          elevation: 10,
                          onPressed: () => Navigator.push(
                              context, CupertinoPageRoute(builder: (_) => RegistrationPage())))),
                ],
              ),
            ),
          ),
          SizedBox(height: 100),
        ],
      ),
    );
  }
}

class _MobileLoginTop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(clipBehavior: Clip.none, children: [
      FadeInDown(
        child: Container(
          height: 200,
          width: double.infinity,
          color: Colors.deepPurple,
        ),
      ),
      Positioned(
        top: 50.0,
        child: CircleWidget(),
      ),
      Positioned(
        bottom: 50.0,
        right: 0.0,
        child: CircleWidget(),
      ),
      Positioned(
        left: 0.0,
        right: 0.0,
        bottom: -70.0,
        child: ZoomIn(
          delay: Duration(milliseconds: 500),
          child: Bounce(
            delay: Duration(seconds: 1),
            child: CircleAvatar(
              radius: 90,
              child: Image.asset("assets/images/Profile.png"),
            ),
          ),
        ),
      ),
    ]);
  }
}
