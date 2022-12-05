import 'package:fhe_template/widget/form_username.dart';
import 'package:flutter/material.dart';
import 'package:fhe_template/core.dart';
import 'package:hexcolor/hexcolor.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  Widget build(context, LoginController controller) {
    controller.view = this;

    return Scaffold(
      backgroundColor: HexColor('#FFDE5B'),
      body: Stack(
        children: [
          Image.asset(
            "images/bg-mid.png",
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            fit: BoxFit.fill,
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
                    fontSize: 35.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 5.0,
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
                          const HDTextFieldForm(
                            hintText: 'Password',
                            obscureText: true,
                          ),
                          const SizedBox(
                            width: 10.0,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 40.0,
                                width: 24.0,
                                child: Checkbox(
                                  checkColor: Colors.white,
                                  activeColor: Colors.amberAccent,
                                  side: MaterialStateBorderSide.resolveWith(
                                    (states) => const BorderSide(
                                      width: 2.0,
                                      color: Colors.amberAccent,
                                    ),
                                  ),
                                  value: controller.condition,
                                  onChanged: (value) =>
                                      controller.setValue(value),
                                ),
                              ),
                              const SizedBox(
                                width: 5.0,
                              ),
                              const Text(
                                "Stay Sign in",
                                style: TextStyle(
                                  fontSize: 13.0,
                                  fontFamily: 'Red Hat Display',
                                ),
                              )
                            ],
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
                              onPressed: () {
                                controller.diaogLogin();
                              },
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
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Belum memiliki akun?",
                      style: TextStyle(
                        fontSize: 15.0,
                        color: HexColor('#625050'),
                      ),
                    ),
                    const SizedBox(
                      width: 5.0,
                    ),
                    InkWell(
                      onTap: () {
                        controller.moveToRegiter();
                      },
                      child: Text(
                        "Buat Akun",
                        style: TextStyle(
                          fontSize: 15.0,
                          color: HexColor('#625050'),
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline,
                        ),
                      ),
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
                child: Text(
                  "© jamuraja",
                  style: TextStyle(
                    color: HexColor('#FFFCFC'),
                    fontFamily: 'Red Hat Display',
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  State<LoginView> createState() => LoginController();
}
