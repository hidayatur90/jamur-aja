import 'package:fhe_template/module/after/shared/button.dart';
import 'package:fhe_template/module/after/shared/hex-colors.dart';
import 'package:fhe_template/module/after/shared/read-only-textfield.dart';
import 'package:flutter/material.dart';
import 'package:fhe_template/core.dart';
import '../../shared/font-family.dart';
import '../controller/re_profile_controller.dart';

class ReProfileView extends StatefulWidget {
  const ReProfileView({Key? key}) : super(key: key);

  Widget build(context, ReProfileController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Icon(
              Icons.arrow_back_ios,
              color: HDColor().colorFontDark(),
            ),
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
        backgroundColor: HDColor().colorPrimary(),
        title: HDFontFamily(
          title: 'Profil',
          fontSize: 24.0,
          color: HDColor().colorFontSemiDark(),
        ).RedHatDisplayBold(),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15.0),
            child: IconButton(
              onPressed: () => controller.doLogout(),
              icon: Icon(
                Icons.logout,
                size: 24.0,
                color: HDColor().colorFontDark(),
              ),
            ),
          ),
        ],
      ),
      body: Stack(
        children: [
          Center(
            child: Image.asset(
              "images/logo-with-opacity.png",
              width: 350.0,
              height: 220.0,
              fit: BoxFit.fill,
              color: const Color.fromRGBO(255, 255, 255, 0.5),
              colorBlendMode: BlendMode.modulate,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 300,
                height: MediaQuery.of(context).size.height,
                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 20.0),
                      child: SizedBox(
                        height: 150.0,
                        width: 150.0,
                        child: CircleAvatar(
                          radius: 28.0,
                          backgroundImage: NetworkImage(
                            "https://i.ibb.co/PGv8ZzG/me.jpg",
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15.0,
                    ),
                    const HDFormReadOnly(
                      labelText: 'Nama Anda',
                      initialValue: 'Rendy Kurniawan',
                    ),
                    const SizedBox(
                      height: 15.0,
                    ),
                    const HDFormReadOnly(
                      labelText: 'No Telepon',
                      initialValue: '08175729371',
                    ),
                    const SizedBox(
                      height: 15.0,
                    ),
                    const HDFormReadOnly(
                      labelText: 'Alamat',
                      initialValue:
                          'Desa Cindogo, Kecamatan Tapen, Kabupaten Bondowoso',
                      maxLines: 3,
                    ),
                    const SizedBox(
                      height: 25.0,
                    ),
                    HDButtonPrimary(
                      title: 'Edit Profil',
                      height: 40.0,
                      width: MediaQuery.of(context).size.width,
                      onPressed: () {},
                    )
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }

  @override
  State<ReProfileView> createState() => ReProfileController();
}
