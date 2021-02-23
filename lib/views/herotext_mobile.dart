import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HeroTextMobile extends StatefulWidget {
  @override
  _HeroTextMobileState createState() => _HeroTextMobileState();
}

class _HeroTextMobileState extends State<HeroTextMobile> {
  double opacityHead = 0.0;
  double opacitySub = 0.0;

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(milliseconds: 1000), () {
      setState(() {
        opacityHead = 1.0;
      });
    });
    Future.delayed(Duration(milliseconds: 2000), () {
      setState(() {
        opacitySub = 1.0;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AnimatedOpacity(
              opacity: opacityHead,
              duration: Duration(milliseconds: 500),
              curve: Curves.easeOut,
              child: Padding(
                padding: const EdgeInsets.only(left: 10.0, right: 6),
                child: Text(
                  'Hello There\nMy name is Yaomink\nI am a Multi Platform\nSoftware Developer\nDo you want to make an Application?',
                  style: GoogleFonts.montserrat(
                      fontSize: 18.0,
                      height: 2.2,
                      color: Colors.black,
                      fontWeight: FontWeight.w800),
                ),
              ),
            ),
            SizedBox(height: 10),
            AnimatedOpacity(
              opacity: opacitySub,
              duration: Duration(milliseconds: 600),
              curve: Curves.easeOut,
              child: Padding(
                padding: const EdgeInsets.only(left: 10.0, right: 6.0),
                child: Text(
                  'Build Responsive Design App\nand Working Fast\nWith Low Cost',
                  style: GoogleFonts.montserrat(
                      fontSize: 14.0,
                      color: Colors.black54,
                      fontWeight: FontWeight.w300),
                ),
              ),
            ),
            SizedBox(height: 30),
            AnimatedOpacity(
              opacity: opacitySub,
              duration: Duration(milliseconds: 550),
              curve: Curves.easeOut,
              child: Text(
                'Scroll to Buttom for more Info!',
                style: GoogleFonts.montserrat(
                    fontSize: 15.0,
                    color: Colors.purpleAccent,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ])
    ]);
  }
}
