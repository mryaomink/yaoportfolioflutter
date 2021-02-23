import 'package:flutter/material.dart';
import 'package:yaominksite/pages/yao_pagedua.dart';
import 'package:yaominksite/pages/yao_pagetiga.dart';
import 'package:yaominksite/pages/yaopage_enam.dart';

class YaoScrollPage extends StatelessWidget {
  const YaoScrollPage({
    Key key,
    @required this.height,
    @required this.width,
  }) : super(key: key);

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.vertical,
      children: [
        Column(
          children: [
            SizedBox(height: height),
            Container(
              width: width,
              height: height,
              color: Colors.black,
              child: Stack(
                children: [
                  YaoPageDua(),
                ],
              ),
            ),
            Container(
              width: width,
              height: height,
              color: Colors.black,
              child: Stack(
                children: [
                  YaoPageTiga(),
                ],
              ),
            ),
            Container(
                width: width,
                height: height,
                color: Color(0xff191919),
                child: YaoPageEnam()),
          ],
        ),
      ],
    );
  }
}
