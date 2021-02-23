import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';
import 'package:yaominksite/widgets/btn_fb.dart';
import 'package:yaominksite/widgets/btn_ig.dart';
import 'package:yaominksite/widgets/btn_tube.dart';
import 'package:yaominksite/widgets/myhero_image.dart';
import 'package:yaominksite/widgets/myhero_text.dart';
import 'package:yaominksite/widgets/yaoscroll_page.dart';

class YaoHero extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YaoHeroSec(),
    );
  }
}

class YaoHeroSec extends StatefulWidget {
  @override
  _YaoHeroSecState createState() => _YaoHeroSecState();
}

class _YaoHeroSecState extends State<YaoHeroSec> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Material(
      child: ScrollConfiguration(
        behavior: NoGlow(),
        child: Stack(
          children: [
            Container(
              width: width,
              height: height,
              color: Color(0xffF0EFF1),
              child: FadeInImage.memoryNetwork(
                image: ('assets/img/headerhero.svg'),
                fit: BoxFit.cover,
                placeholder: kTransparentImage,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                MyHeroText(),
                MyHeroImage(),
              ],
            ),
            YaoScrollPage(height: height, width: width),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                BtnFb(),
                BtnTube(),
                BtnIg(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class NoGlow extends ScrollBehavior {
  @override
  Widget buildViewportChrome(
      BuildContext context, Widget child, AxisDirection axisDirection) {
    return child;
  }
}
