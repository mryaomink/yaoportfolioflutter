import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:url_launcher/url_launcher.dart';

class YaoPageLima extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      child: IconButton(
        splashColor: Colors.red,
        icon: Icon(
          AntDesign.phone,
          color: Colors.lightGreen,
          size: 48,
        ),
        onPressed: () async {
          const url =
              'https://wa.me/6285252742437?text=Saya%20ingin%20membuat%20aplikasi';
          if (await canLaunch(url)) {
            await launch(url);
          } else {
            throw 'Could not launch $url';
          }
        },
      ),
    );
  }
}
