import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:url_launcher/url_launcher.dart';

class BtnWa extends StatelessWidget {
  const BtnWa({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const String toLaunch = 'https://wa.me/6285252742437';
    return Container(
      width: 100,
      height: 100,
      child: newMethod(toLaunch),
    );
  }

  IconButton newMethod(String toLaunch) {
    return IconButton(
        icon: Icon(
          AntDesign.message1,
          color: Colors.lightBlue,
          size: 26,
        ),
        onPressed: () => _launchInWebViewWithJavaScript(toLaunch));
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
