import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:yaominksite/pages/yao_hero.dart';

void main() => runApp(YaominkApp());

class YaominkApp extends StatefulWidget {
  @override
  _YaominkAppState createState() => _YaominkAppState();
}

class _YaominkAppState extends State<YaominkApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Yaomink Portfolio Site',
      theme: ThemeData(visualDensity: VisualDensity.adaptivePlatformDensity),
      home: AnimatedSplashScreen(
        duration: 1000,
        splash: Text('Welcome To My Portofolio Website',
            style: GoogleFonts.poppins(
                fontSize: 22.0,
                color: Color(0xff191919),
                fontWeight: FontWeight.bold)),
        nextScreen: YaoHero(),
        splashTransition: SplashTransition.slideTransition,
        pageTransitionType: PageTransitionType.scale,
        backgroundColor: Color(0xffF0EFF1),
      ),
    );
  }
}
