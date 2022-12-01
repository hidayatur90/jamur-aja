import 'package:fhe_template/widget/form_username.dart';
import 'package:flutter/material.dart';
import 'package:fhe_template/core.dart';
import 'package:hexcolor/hexcolor.dart';
import '../controller/login_controller.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  Widget build(context, LoginController controller) {
    controller.view = this;

    return Scaffold(
      backgroundColor: HexColor('#FFDE5B'),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "images/logo-app.png",
              width: 260.0,
              height: 130.0,
              fit: BoxFit.fill,
            ),
            Text(
              "Selamat Datang",
              style: TextStyle(
                shadows: [
                  Shadow(
                    offset: const Offset(0.0, 0.0),
                    blurRadius: 4.0,
                    color: Colors.black.withOpacity(0.8),
                  ),
                ],
                color: HexColor('#343434'),
                fontFamily: 'Red Hat Display',
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width / 1.5,
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
                      const Text(
                        "Silahkan login terlebih dahulu",
                        style: TextStyle(
                          fontSize: 13.0,
                          fontFamily: 'Red Hat Display',
                        ),
                      ),
                      const SizedBox(
                        height: 12.0,
                      ),
                      const HDTextFieldForm(hintText: 'Username'),
                      const SizedBox(
                        height: 10.0,
                      ),
                      const HDTextFieldForm(hintText: 'Password'),
                      const SizedBox(
                        width: 10.0,
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width,
                        height: 34.0,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: HexColor('#FFDE59'),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(7.0),
                            ),
                          ),
                          onPressed: () {},
                          child: const Text(
                            "LOGIN",
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  State<LoginView> createState() => LoginController();
}
