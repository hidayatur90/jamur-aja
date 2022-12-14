import 'package:fhe_template/module/after/shared/font-family.dart';
import 'package:flutter/material.dart';
import 'package:fhe_template/core.dart';
import 'package:hexcolor/hexcolor.dart';
import '../../shared/hex-colors.dart';
import '../controller/re_dashboard_controller.dart';
import '../widget/sidebar.dart';

class ReDashboardView extends StatefulWidget {
  const ReDashboardView({Key? key}) : super(key: key);

  Widget build(context, ReDashboardController controller) {
    controller.view = this;

    return Scaffold(
      backgroundColor: HDColor().colorPrimary(),
      drawer: NavDrawer(),
      appBar: AppBar(
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: Image.asset(
                "assets/icons/sidebar-icon.png",
                width: 30.0,
                height: 17.0,
                fit: BoxFit.fill,
              ),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),
        backgroundColor: HDColor().colorPrimary(),
        elevation: 0.0,
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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          HDFontFamily(title: 'Budidaya', fontSize: 48).WorkSans(),
          HDFontFamily(title: 'Jamur Rezeki', fontSize: 48).WorkSansBold(),
        ],
      ),
    );
  }

  @override
  State<ReDashboardView> createState() => ReDashboardController();
}
