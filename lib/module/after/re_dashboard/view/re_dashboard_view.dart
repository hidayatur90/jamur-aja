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
              onPressed: () => controller.moveToInfo(),
              icon: Icon(
                Icons.info_outline,
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
          HDFontFamily(
                  title:
                      'Menjual olahan Jamur tiram, sedap, sehat dan halal. Tersedia dalam berbagai rasa.  Pesan Sekarang !',
                  fontSize: 15.0)
              .WorkSans(),
          const SizedBox(
            height: 20.0,
          ),
          SizedBox(
            height: 300.0,
            child: ListView.builder(
              itemCount: 5,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Row(
                  children: [
                    const SizedBox(
                      width: 10.0,
                    ),
                    SizedBox(
                      width: 300.0,
                      height: 300.0,
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(9.0),
                        ),
                        color: HDColor().colorFontLight(),
                      ),
                    )
                  ],
                );
              },
            ),
          ),
          const SizedBox(
            height: 3.0,
          ),
          Expanded(
            child: Align(
              alignment: FractionalOffset.bottomCenter,
              child: MaterialButton(
                  onPressed: () => {},
                  // text
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      height: 70.0,
                      width: 300.0,
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(9.0),
                        ),
                        color: HDColor().colorFontLight(),
                        child: Padding(
                          padding: const EdgeInsets.only(
                            top: 2.0,
                            bottom: 2.0,
                            left: 8.0,
                            right: 8.0,
                          ),
                          child: Row(
                            children: [
                              Expanded(
                                child: Column(
                                  children: [
                                    IconButton(
                                      onPressed: () {},
                                      icon: const Icon(
                                        Icons.card_travel,
                                        size: 24.0,
                                      ),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        HDFontFamily(
                                                title: 'Status ',
                                                fontSize: 12.0)
                                            .WorkSansBold(),
                                        HDFontFamily(
                                                title: 'Pesanan',
                                                fontSize: 12.0)
                                            .WorkSans(),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                width: 8.0,
                              ),
                              Expanded(
                                child: Column(
                                  children: [
                                    IconButton(
                                      onPressed: () {},
                                      icon: const Icon(
                                        Icons.card_travel,
                                        size: 24.0,
                                      ),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        HDFontFamily(
                                                title: 'Riwayat ',
                                                fontSize: 12.0)
                                            .WorkSansBold(),
                                        HDFontFamily(
                                                title: 'Pesanan',
                                                fontSize: 12.0)
                                            .WorkSans(),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  )),
            ),
          ),
        ],
      ),
    );
  }

  @override
  State<ReDashboardView> createState() => ReDashboardController();
}
