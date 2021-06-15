import 'package:auto_size_text/auto_size_text.dart';
import 'package:courseregistration/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class DesktopLandingPage extends StatelessWidget {
  double height, width, padding;
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    padding = width / 18;
    return Scaffold(
      backgroundColor: twentyFive,
      body: SingleChildScrollView(
        padding: EdgeInsets.fromLTRB(padding, 0, padding, 0),
        physics: BouncingScrollPhysics(),
        child: Column(children: [
          // 1/20 of the height allocated -  remaining 9 parts
          SizedBox(
            height: (height / 20) * 1,
          ),
          // padding given and some text is assigned
          Padding(
              padding: const EdgeInsets.fromLTRB(2, 0, 2, 0),
              child: RichText(
                textAlign: TextAlign.center,
                softWrap: true,
                text: TextSpan(
                    style: TextStyle(
                        color: primaryColor,
                        fontWeight: FontWeight.bold,
                        fontFamily: GoogleFonts.actor().fontFamily,
                        fontSize: (width.ceilToDouble() / 18).ceilToDouble()),
                    children: <TextSpan>[
                      TextSpan(
                        text: "Become a ",
                      ),
                      TextSpan(
                          text: "Flutter Developer ",
                          style: TextStyle(color: white, fontWeight: FontWeight.bold)),
                      TextSpan(
                        text: "in just ",
                      ),
                      TextSpan(
                          text: " 5 Days !",
                          style: TextStyle(color: white, fontWeight: FontWeight.bold)),
                    ]),
              )
              // child: AutoSizeText(
              //   "Flutter Developer in just",
              //   minFontSize: (width.ceilToDouble() / 20).ceilToDouble(),
              //   maxFontSize: (width.ceilToDouble() / 10).ceilToDouble(),
              //   maxLines: 2,
              //   textAlign: TextAlign.center,
              //   style: ,
              // ),
              ),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 0, 10, 2),
            child: AutoSizeText(
              "5 days 5 masterclasses from the absolute Flutter Expert\nPS: You might get addicted",
              minFontSize: (width.ceilToDouble() / 50).ceilToDouble(),
              maxFontSize: (width.ceilToDouble() / 30).ceilToDouble(),
              maxLines: 2,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: primaryColor,
              ),
            ),
          ),
          SizedBox(
            height: (height / 30) * 1,
          ),
          // 7/10 part of height assigned - remaining  2
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                    bottomRight: Radius.circular(15),
                    bottomLeft: Radius.circular(15)),
                child: Container(
                  width: double.infinity,
                  height: ((width - padding) / 4) * 2,
                  decoration: BoxDecoration(
                      color: darkGrey,
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/images/illustration-2.png"))),
                ),
              ),
              ClipRRect(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                    bottomRight: Radius.circular(15),
                    bottomLeft: Radius.circular(15)),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                    colors: [
                      gradient1,
                      gradient4,
                      gradient2,
                      gradient3,
                    ],
                  )),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        AutoSizeText(
                          "Get Access to the Exclusive Course at just \u{20B9} 499 -> ",
                          minFontSize: (width.ceilToDouble() / 50).ceilToDouble(),
                          maxFontSize: (width.ceilToDouble() / 30).ceilToDouble(),
                          maxLines: 2,
                          textAlign: TextAlign.center,
                          style: TextStyle(color: white),
                        ),
                        AutoSizeText(
                          "Click to Register Now !",
                          minFontSize: (width.ceilToDouble() / 80).ceilToDouble(),
                          maxFontSize: (width.ceilToDouble() / 50).ceilToDouble(),
                          maxLines: 2,
                          textAlign: TextAlign.center,
                          style: TextStyle(color: white),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: height / 20,
          ),

          Padding(
            padding: const EdgeInsets.fromLTRB(0, 8, 0, 2),
            child: Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                    color: darkGrey, borderRadius: BorderRadius.all(Radius.circular(22))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    AutoSizeText(
                      "More than 100 students & IT Professionals have learnt to develop and deploy production ready applications",
                      minFontSize: (width.ceilToDouble() / 30).ceilToDouble(),
                      maxFontSize: (width.ceilToDouble() / 20).ceilToDouble(),
                      maxLines: 3,
                      textAlign: TextAlign.center,
                      style: TextStyle(color: white),
                    ),
                    SizedBox(
                      height: 10,
                    ),

                    // testimonials
                    GridView.count(
                      crossAxisCount: width > 1200.0 ? 4 : 2,
                      shrinkWrap: true,
                      padding: EdgeInsets.all(5),
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(height: 200, color: Colors.black),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(height: 200, color: Colors.black),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(height: 200, color: Colors.black),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(height: 200, color: Colors.black),
                        ),
                      ],
                    ),
                    SizedBox(height: height / 20),
                  ],
                )),
          ),
          SizedBox(
            height: height / 20,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //
              Expanded(
                  flex: 1,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AutoSizeText(
                        "Who needs to take this course ?",
                        minFontSize: (width.ceilToDouble() / 30).ceilToDouble(),
                        maxFontSize: (width.ceilToDouble() / 20).ceilToDouble(),
                        maxLines: 3,
                        textAlign: TextAlign.start,
                        style: TextStyle(color: white),
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(15),
                            topRight: Radius.circular(15),
                            bottomRight: Radius.circular(15),
                            bottomLeft: Radius.circular(15)),
                        child: Container(
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                            colors: [
                              gradient1,
                              gradient4,
                              gradient2,
                              gradient3,
                            ],
                          )),
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(15, 8, 15, 8),
                            child: AutoSizeText(
                              "Register -> ",
                              minFontSize: (width.ceilToDouble() / 50).ceilToDouble(),
                              maxFontSize: (width.ceilToDouble() / 30).ceilToDouble(),
                              maxLines: 2,
                              textAlign: TextAlign.center,
                              style: TextStyle(color: white),
                            ),
                          ),
                        ),
                      )
                    ],
                  )),
              Expanded(
                flex: 1,
                child: GridView.count(
                  crossAxisCount: width > 800.0 ? 2 : 1,
                  shrinkWrap: true,
                  padding: EdgeInsets.all(5),
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(height: 200, color: Colors.black),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(height: 200, color: Colors.black),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(height: 200, color: Colors.black),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(height: 200, color: Colors.black),
                    ),
                  ],
                ),
              )
            ],
          ),

          // bottom padding sized box
          SizedBox(
            height: height / 20,
          )
        ]),
      ),
    );
  }
}
