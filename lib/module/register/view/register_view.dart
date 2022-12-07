import 'package:fhe_template/widget/form_username.dart';
import 'package:fhe_template/widget/textPoppins.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:fhe_template/core.dart';
import 'package:hexcolor/hexcolor.dart';
import '../../../widget/dialog.dart';
import '../../../widget/textRedHatDisplay.dart';
import '../controller/register_controller.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({Key? key}) : super(key: key);
  Widget build(context, RegisterController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Padding(
            padding: EdgeInsets.only(left: 20.0),
            child: Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ),
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
        backgroundColor: HexColor('#FFDE5B'),
        title: Text(
          "Buat Akun",
          style: TextStyle(
            fontSize: 24,
            fontFamily: 'Red Hat Display',
            color: HexColor('#2F4545'),
          ),
        ),
        actions: const [],
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 1.0,
            ),
            const HDRedHatDisplay(
                text: 'Lengkapi data diri Anda', fontSize: 18),
            const SizedBox(
              height: 10.0,
            ),
            const HDTextFieldForm(hintText: 'Nama Lengkap'),
            const SizedBox(
              height: 10.0,
            ),
            // Text(
            //   controller.date.toString(),
            //   style: const TextStyle(
            //     fontSize: 10.0,
            //   ),
            // ),
            Row(
              children: [
                Expanded(
                  child: TextFormField(
                    // controller: controller.date.toString(),
                    initialValue: controller.date.toString(),
                    decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.calendar_month),
                      hintText: 'Tanggal Lahir',
                    ),
                    onTap: () async {
                      DateTime? pickDate = await showDatePicker(
                        context: context,
                        initialDate: controller.date,
                        firstDate: DateTime(2000),
                        lastDate: DateTime(2099),
                      );
                      if (pickDate == null) return;
                      controller.setState(() {
                        controller.date = pickDate;
                      });
                    },
                  ),
                ),
                const SizedBox(
                  width: 8.0,
                ),
                Expanded(
                  child: TextFormField(
                      decoration: const InputDecoration(
                        labelText: 'Foto',
                      ),
                      onChanged: (value) {},
                      onTap: () async {
                        FilePickerResult? result =
                            await FilePicker.platform.pickFiles(
                          allowMultiple: true,
                          type: FileType.image,
                        );
                        // if (file != null) {
                        //   for (String? path in result.paths) {
                        //     File file = File(path!);
                        //     _images.add(file);
                        //   }
                        //   // Here your onChanged() function is returning just one image
                        // }
                      }),
                ),
              ],
            ),
            const SizedBox(
              height: 10.0,
            ),
            const HDRedHatDisplay(text: 'Jenis Kelamin', fontSize: 18),
            Row(
              children: [
                Expanded(
                  child: ListTile(
                    title:
                        const HDRedHatDisplay(text: 'Laki-laki', fontSize: 16),
                    leading: Radio(
                      value: 1,
                      groupValue: controller.radio,
                      onChanged: (value) => controller.setValue(value),
                    ),
                  ),
                ),
                Expanded(
                  child: ListTile(
                    title:
                        const HDRedHatDisplay(text: 'Perempuan', fontSize: 16),
                    leading: Radio(
                      value: 2,
                      groupValue: controller.radio,
                      onChanged: (value) => controller.setValue(value),
                    ),
                  ),
                ),
              ],
            ),
            const HDTextFieldForm(
              hintText: 'Alamat',
              maxLines: 5,
            ),
            const SizedBox(
              height: 10.0,
            ),
            const HDRedHatDisplay(text: 'Username & Password', fontSize: 18),
            const SizedBox(
              height: 10.0,
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
              height: 10.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(
                  width: 150,
                  height: 40,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: HexColor('#FFDE59'),
                    ),
                    child: const HDPoppins(text: 'DAFTAR', fontSize: 15),
                    onPressed: () {
                      HDShowInfoDialog(
                          context, "Pesan", "Daftar Berhasil", "OK");
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  @override
  State<RegisterView> createState() => RegisterController();
}
