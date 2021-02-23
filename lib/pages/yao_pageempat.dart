import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class YaoPageEmpat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          'Untuk Informasi Lebih Lanjut\nBisa Hubungi Saya\nDengan menekan Icon\nDi Bawah, atau di Atas\n atau via Email yao.freelance@gmail.com',
          style: GoogleFonts.montserrat(
              fontSize: 18.0, color: Colors.white, fontWeight: FontWeight.w300),
        ),
      ],
    );
  }
}
