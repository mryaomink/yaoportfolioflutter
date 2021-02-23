import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class YaoBtn extends StatefulWidget {
  @override
  _YaoBtnState createState() => _YaoBtnState();
}

class _YaoBtnState extends State<YaoBtn> {
  String toLaunch = 'https://wa.me/6285252742437';

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: [
          Text(
            'Hello There\nMy name is Yaomink\nI am a Multi Platform\nSoftware Developer\nDo you want to make an Application?',
            style: GoogleFonts.montserrat(
                fontSize: 18.0,
                height: 2.2,
                color: Colors.black,
                fontWeight: FontWeight.w800),
          ),
          OutlineButton(
              color: Colors.blue,
              child: Text(
                'Klik',
                style: TextStyle(fontSize: 20.0, color: Colors.red),
              ),
              onPressed: () => _launchInWebViewWithJavaScript(toLaunch)),
        ],
      ),
    );
  }
}

Future<void> _launchInWebViewWithJavaScript(String url) async {
  if (await canLaunch(url)) {
    await launch(
      url,
      forceSafariVC: true,
      forceWebView: true,
      enableJavaScript: true,
    );
  } else {
    throw 'Could not launch $url';
  }
}
