import 'package:flutter/material.dart';

import 'package:carousel_pro/carousel_pro.dart';
import 'package:google_fonts/google_fonts.dart';

class YaoPageEnam extends StatefulWidget {
  @override
  _YaoPageEnamState createState() => _YaoPageEnamState();
}

class _YaoPageEnamState extends State<YaoPageEnam> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'My Example Project',
          style: GoogleFonts.montserrat(fontSize: 22, color: Colors.white),
        ),
        Expanded(
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Carousel(
              boxFit: BoxFit.cover,
              dotColor: Colors.lightGreen,
              images: [
                AssetImage('assets/img/1.png'),
                AssetImage('assets/img/2.png'),
                AssetImage('assets/img/3.png'),
                AssetImage('assets/img/4.png'),
                AssetImage('assets/img/5.png'),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
