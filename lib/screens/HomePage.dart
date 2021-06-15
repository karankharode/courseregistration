import 'package:courseregistration/screens/Login/MobileLoginPage.dart';
import 'package:flutter/material.dart';

import 'Login/DesktopLogin.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth > 1200) {
          return Scaffold(backgroundColor: Color(0xff252525), body: DesktopLogin());
        } else if (constraints.minWidth > 800 && constraints.maxWidth < 1200) {
          return Scaffold(backgroundColor: Color(0xff252525), body: DesktopLogin());
        } else {
          return Scaffold(backgroundColor: Color(0xff252525), body: MobileLogin());
          // mobile view
        }
      },
    );
  }
}
