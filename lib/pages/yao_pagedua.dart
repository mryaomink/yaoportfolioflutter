import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:yaominksite/views/pagedua_desk.dart';
import 'package:yaominksite/views/pagedua_mobile.dart';

class YaoPageDua extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: PageDuaMobile(),
      desktop: PageDuaDesk(),
    );
  }
}
