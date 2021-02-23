import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:transparent_image/transparent_image.dart';

class YaoPageTiga extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: FadeInImage.memoryNetwork(
            image: ('assets/img/manlaptop.svg'),
            fit: BoxFit.cover,
            placeholder: kTransparentImage,
            width: MediaQuery.of(context).size.width / 10,
          ),
        ),
        Text(
          'Projek Yang Saya Kerjakan\nAplikasi Portal Berita,Sistem Informasi\nE commerce\ndll.Waktu dan Biaya\nBiasaya\nTergantung Klien dan\nTingkat Kesulitan',
          style: GoogleFonts.montserrat(
              fontSize: 16.0, color: Colors.white, fontWeight: FontWeight.w300),
        ),
      ],
    );
  }
}
