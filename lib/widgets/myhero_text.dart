import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:yaominksite/views/herotext_desk.dart';
import 'package:yaominksite/views/herotext_mobile.dart';

class MyHeroText extends StatefulWidget {
  @override
  _MyHeroTextState createState() => _MyHeroTextState();
}

class _MyHeroTextState extends State<MyHeroText> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      desktop: HeroTextDesk(),
      mobile: HeroTextMobile(),
    );
  }
}
