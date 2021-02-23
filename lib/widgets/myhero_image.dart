import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

class MyHeroImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: FadeInImage.memoryNetwork(
        image: ('assets/img/yao.svg'),
        fit: BoxFit.cover,
        placeholder: kTransparentImage,
        width: MediaQuery.of(context).size.width / 10,
      ),
    );
  }
}
