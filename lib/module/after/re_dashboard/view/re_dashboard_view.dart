import 'package:flutter/material.dart';
import 'package:fhe_template/core.dart';
import 'package:hexcolor/hexcolor.dart';
import '../../shared/font-family.dart';
import '../../shared/hex-colors.dart';
import '../controller/re_dashboard_controller.dart';

class ReDashboardView extends StatefulWidget {
  const ReDashboardView({Key? key}) : super(key: key);

  Widget build(context, ReDashboardController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: HDFontFamily(
          title: 'Dashboard',
          fontSize: 24.0,
          color: HDColor().colorFontSemiDark(),
        ).RedHatDisplayBold(),
        backgroundColor: HexColor('#FFDE5B'),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15.0),
            child: IconButton(
              onPressed: () => controller.moveToProfil(),
              icon: Icon(
                Icons.person,
                size: 24.0,
                color: HexColor('#2F4545'),
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: const [],
          ),
        ),
      ),
    );
  }

  @override
  State<ReDashboardView> createState() => ReDashboardController();
}
