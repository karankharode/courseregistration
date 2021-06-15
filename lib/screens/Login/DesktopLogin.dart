import 'package:animate_do/animate_do.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:courseregistration/constants/strings.dart';
import 'package:courseregistration/screens/RegistrationPage.dart';
import 'package:courseregistration/widgets/back_widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DesktopLogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scrollbar(
      child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Container(
              height: size.height,
              child: Row(
                children: [
                  _DesktopLoginLeftSide(size: size),
                  _DesktopLoginRightSide(size: size),
                ],
              ),
            ),
            Container(
              color: Colors.deepPurple,
              height: size.height,
              width: double.infinity,
              child: Column(
                children: [
                  FittedBox(
                    fit: BoxFit.fitWidth,
                    child: Text(
                      "Contents of our Course !",
                      style: TextStyle(fontSize: size.width / 20, color: Colors.white),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
                    child: FittedBox(
                      fit: BoxFit.fitWidth,
                      child: Text(
                        "This 5 day Flutter Workshop will lead you from basic dart syntaxes to advanced Flutter Widgets !",
                        style: TextStyle(color: Colors.white70),
                        maxLines: 2,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              color: Colors.deepPurpleAccent,
              height: size.height,
            ),
            Container(
              color: Colors.white60,
              height: size.height,
            ),
            Container(
              color: Colors.deepPurple,
              height: size.height,
            )
          ],
        ),
      ),
    );
  }
}

class _DesktopLoginRightSide extends StatelessWidget {
  const _DesktopLoginRightSide({
    @required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return FadeInRight(
      delay: Duration(seconds: 2),
      child: Container(
          width: size.width * 0.5,
          child: Stack(
            children: [
              Positioned(
                top: 20.0,
                right: 0.0,
                child: Transform.rotate(
                  angle: -180,
                  child: Spin(delay: Duration(seconds: 3), child: RectangleBordedWidget()),
                ),
              ),
              SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Signin',
                        style: TextStyle(
                            color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 5.0,
                        width: 50,
                        color: Colors.deepPurple,
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                        width: 300,
                        child: TextFormField(
                          enableSuggestions: true,
                          decoration: InputDecoration(hintText: 'Username ...'),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                        width: 300,
                        child: TextFormField(
                          obscureText: true,
                          decoration: InputDecoration(hintText: 'Password ...'),
                        ),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      Container(
                          height: 50,
                          width: 300,
                          child: MaterialButton(
                              elevation: 10,
                              color: Colors.deepPurple,
                              child: Text(
                                'LOGIN',
                                style: TextStyle(color: Colors.white, fontSize: 20),
                              ),
                              shape: StadiumBorder(),
                              onPressed: () => Navigator.push(context,
                                  CupertinoPageRoute(builder: (_) => RegistrationPage())))),
                    ],
                  ),
                ),
              )
            ],
          )),
    );
  }
}

class _DesktopLoginLeftSide extends StatelessWidget {
  _DesktopLoginLeftSide({
    @required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return FadeInLeft(
      child: Container(
        color: Colors.deepPurple,
        width: size.width * 0.5,
        child: Stack(
          children: [
            Positioned(
              bottom: size.height * 0.3,
              right: 0.0,
              child: FadeIn(
                delay: Duration(seconds: 2),
                child: SlideInLeft(delay: Duration(milliseconds: 2500), child: CircleWidget()),
              ),
            ),
            Center(
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      FadeIn(
                        delay: Duration(seconds: 1),
                        child: AutoSizeText(
                          homeHeading,
                          style: TextStyle(
                              color: Colors.white, fontSize: 40, fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      FadeInLeft(
                        delay: Duration(milliseconds: 1700),
                        child: Container(
                          height: 5,
                          width: 120,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      FadeInUp(
                        delay: Duration(seconds: 3),
                        child: Container(
                          width: 400,
                          child: Text(
                            homeDescription,
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      BounceInUp(
                        delay: Duration(seconds: 4),
                        child: Container(
                          height: 60,
                          width: 200,
                          child: OutlineButton(
                            highlightElevation: 3.0,
                            highlightedBorderColor: Colors.white,
                            borderSide: BorderSide(
                                style: BorderStyle.solid, width: 3.0, color: Colors.white),
                            child: Text(
                              'Know More',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                              ),
                            ),
                            shape: StadiumBorder(),
                            onPressed: () {},
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Map<String, dynamic> settings = {
  'particles': {
    'number': {
      'value': 100,
      'density': {'enable': true, 'value_area': 800}
    },
    'color': {'value': '#fff'},
    'shape': {
      'type': 'circle',
      'stroke': {'width': 0, 'color': '#FFFFFF'},
      'polygon': {'nb_sides': 5},
      'character': {
        'value': 'P',
        'font': 'arial',
        'style': 'normal',
        'weight': 'normal',
      },
      'image': {'src': '', 'width': 100, 'height': 100}
    },
    'opacity': {
      'value': 1,
      'random': false,
      'anim': {'enable': false, 'speed': 2, 'opacity_min': 0, 'sync': false}
    },
    'size': {
      'value': 10,
      'random': false,
      'anim': {'enable': false, 'speed': 20, 'size_min': 0, 'sync': false}
    },
    'line_linked': {'enable': true, 'distance': 100, 'color': '#FFFFFF', 'opacity': 1, 'width': 1},
    'move': {
      'enable': true,
      'speed': 6,
      'direction': 'none',
      'random': false,
      'straight': false,
      'out_mode': 'out',
      'bounce': false,
      'parallax': false,
      'attract': {'enable': false, 'rotateX': 3000, 'rotateY': 3000}
    }
  },
  'interactivity': {
    'detect_on': 'canvas',
    'events': {
      'onhover': {'enable': true, 'mode': 'grab'},
      'onclick': {'enable': true, 'mode': 'push'},
      'resize': true
    },
    'modes': {
      'grab': {
        'distance': 100,
        'line_linked': {'opacity': 1},
        'outer_shape': {
          'enable': false,
          'type': 'inherit',
          'size': 20,
          'stroke': {'width': 'inherit', 'color': 'inherit'},
        }
      },
      'bubble': {'distance': 100, 'size': 40, 'duration': 0.4, 'opacity': 8, 'speed': 3},
      'repulse': {'distance': 200, 'strength': 100, 'duration': 0.4},
      'push': {'particles_nb': 4},
      'remove': {'particles_nb': 2}
    }
  },
  'retina_detect': false
};
