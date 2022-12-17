import 'package:fhe_template/module/after/shared/font-family.dart';
import 'package:fhe_template/module/after/shared/form-textfield.dart';
import 'package:flutter/material.dart';
import 'package:fhe_template/core.dart';
import '../../shared/button.dart';
import '../../shared/hex-colors.dart';
import '../controller/re_login_controller.dart'; 

class ReLoginView extends StatefulWidget {
  const ReLoginView({Key? key}) : super(key: key);

  Widget build(context, ReLoginController controller) {
    controller.view = this;

    return Scaffold(
      backgroundColor: HDColor().colorPrimary(),
      body: Stack(
        children: [
          Center(
            child: Image.asset(
              "images/bg-mid.png",
              width: 500.0,
              height: MediaQuery.of(context).size.height,
              fit: BoxFit.fill,
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "images/logo-app.png",
                  width: 300.0,
                  height: 170.0,
                  fit: BoxFit.fill,
                ),
                const SizedBox(
                  height: 5.0,
                ),
                // header text
                HDFontFamily(
                  title: 'Selamat Datang',
                  fontSize: 35.0,
                  shadow: [
                    Shadow(
                      offset: const Offset(0.0, 0.0),
                      blurRadius: 4.0,
                      color: Colors.black.withOpacity(0.8),
                    ),
                  ],
                  color: HDColor().colorFontDark(),
                ).RedHatDisplayBold(),
                const SizedBox(
                  height: 5.0,
                ),
                Container(
                  width: 300.0,
                  decoration: BoxDecoration(boxShadow: [
                    BoxShadow(
                      blurRadius: 8,
                      offset: const Offset(0.0, 0.0),
                      color: Colors.black.withOpacity(1.0),
                      spreadRadius: -9,
                    )
                  ]),
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(9.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        children: [
                          // fonts
                          HDFontFamily(
                            title: 'Silahkan login terlebih dahulu',
                            fontSize: 13.0,
                          ).RedHatDisplay(),
                          const SizedBox(
                            height: 12.0,
                          ),
                          const HDFormTextField(hintText: 'Username'),
                          const SizedBox(
                            height: 10.0,
                          ),
                          const HDFormTextField(
                              hintText: 'Password', obscureText: true),
                          const SizedBox(
                            height: 10.0,
                          ),
                          // button
                          HDButtonPrimary(
                            title: 'LOGIN',
                            width: MediaQuery.of(context).size.width,
                            height: 40,
                            onPressed: () => controller.doLogin(),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // text
                    HDFontFamily(
                      title: 'Belum memiliki Akun?',
                      fontSize: 15.0,
                      color: HDColor().colorFontSemiDark(),
                    ).Default(),
                    const SizedBox(
                      width: 5.0,
                    ),
                    InkWell(
                      onTap: () {
                        controller.moveToRegister();
                      },
                      child: HDFontFamily(
                        title: 'Buat Akun',
                        fontSize: 15.0,
                        color: HDColor().colorFontSemiDark(),
                      ).DefaultBold(),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: Align(
              alignment: FractionalOffset.bottomCenter,
              child: MaterialButton(
                onPressed: () => {},
                // text
                child: HDFontFamily(
                  title: '© jamuraja',
                  fontSize: 12.0,
                  color: HDColor().colorFontLight(),
                ).Default(),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  State<ReLoginView> createState() => ReLoginController();
}
