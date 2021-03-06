import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:transparent_image/transparent_image.dart';

class PageDuaMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Saya Seorang Freelancer\nYang Mengerjakan Pembuatan Aplikasi\nuntuk Mobile (android),\nWeb Design (Wordpress), Web Development\ndengan Menggunakan Framework Flutter\nReact JS,Laravel,& Bahasa Pemrograman Java\n',
          style: GoogleFonts.montserrat(
              fontSize: 16.0, color: Colors.white, fontWeight: FontWeight.w300),
        ),
        Align(
          alignment: Alignment.centerRight,
          child: FadeInImage.memoryNetwork(
            image: ('assets/img/yao.svg'),
            fit: BoxFit.cover,
            placeholder: kTransparentImage,
            width: MediaQuery.of(context).size.width / 8,
          ),
        ),
      ],
    );
  }
}
