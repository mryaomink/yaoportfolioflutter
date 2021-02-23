import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:url_launcher/url_launcher.dart';

class BtnFb extends StatelessWidget {
  const BtnFb({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const String toLaunch = 'https://www.facebook.com/haxcer';
    return Container(
      width: 100,
      height: 100,
      child: IconButton(
          icon: Icon(
            AntDesign.facebook_square,
            color: Colors.lightBlue,
            size: 48,
          ),
          onPressed: () => _launchInWebViewWithJavaScript(toLaunch)),
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
