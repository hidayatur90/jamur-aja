import 'package:fhe_template/module/after/shared/button.dart';
import 'package:fhe_template/module/after/shared/font-family.dart';
import 'package:fhe_template/module/after/shared/form-textfield.dart';
import 'package:fhe_template/module/after/shared/hex-colors.dart';
import 'package:flutter/material.dart';
import 'package:fhe_template/core.dart';
import '../controller/re_register_controller.dart';

class ReRegisterView extends StatefulWidget {
  const ReRegisterView({Key? key}) : super(key: key);

  Widget build(context, ReRegisterController controller) {
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
          title: 'Buat Akun',
          fontSize: 24.0,
          color: HDColor().colorFontSemiDark(),
        ).RedHatDisplayBold(),
        actions: const [],
      ),
      body: SingleChildScrollView(
        controller: ScrollController(),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 5.0,
              ),
              HDFontFamily(title: 'Lengkapi data diri Anda', fontSize: 18.0)
                  .RedHatDisplay(),
              const SizedBox(
                height: 5.0,
              ),
              const HDFormTextField(hintText: 'Nama Lengkap'),
              const SizedBox(
                height: 5.0,
              ),
              HDFontFamily(title: 'Jenis Kelamin', fontSize: 18.0)
                  .RedHatDisplay(),
              Row(
                children: [
                  Expanded(
                    child: ListTile(
                      title: const Text(
                        'Laki-laki',
                        style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'Red Hat Display',
                        ),
                      ),
                      leading: Radio(
                        value: 1,
                        groupValue: controller.radio,
                        onChanged: (value) => controller.setValue(value),
                      ),
                    ),
                  ),
                  Expanded(
                    child: ListTile(
                      title: const Text(
                        'Perempuan',
                        style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'Red Hat Display',
                        ),
                      ),
                      leading: Radio(
                        value: 2,
                        groupValue: controller.radio,
                        onChanged: (value) => controller.setValue(value),
                      ),
                    ),
                  ),
                ],
              ),
              const HDFormTextField(
                hintText: 'No Telepon',
                obscureText: true,
                // maxLines: ,
              ),
              const SizedBox(
                height: 5.0,
              ),
              const HDFormTextField(hintText: 'Alamat'),
              const SizedBox(
                height: 5.0,
              ),
              HDFontFamily(title: 'Username & Password', fontSize: 18.0)
                  .RedHatDisplay(),
              const SizedBox(
                height: 5.0,
              ),
              const HDFormTextField(hintText: 'Username'),
              const SizedBox(
                height: 5.0,
              ),
              const HDFormTextField(hintText: 'Password', obscureText: true),
              const SizedBox(
                height: 5.0,
              ),
              const HDFormTextField(
                  hintText: 'Confirm Password', obscureText: true),
              const SizedBox(
                height: 5.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  HDButtonPrimary(
                    title: 'DAFTAR',
                    height: 40.0,
                    width: 150.0,
                    onPressed: () => controller.doRegister(),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<ReRegisterView> createState() => ReRegisterController();
}
