import 'package:flutter/material.dart';

class HDDatePicker extends StatefulWidget {
  const HDDatePicker({Key? key}) : super(key: key);

  @override
  _HDDatePickerState createState() => _HDDatePickerState();
}

class _HDDatePickerState extends State<HDDatePicker> {
  //buat variabel pertama
  DateTime? _dateTime;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //kedua buat codingan ini
            Text(
              _dateTime == null
                  ? 'Nothing has been picked yet'
                  : _dateTime.toString(),
            ),
            ElevatedButton(
              child: const Text("Pick a date"),
              onPressed: () {
                showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(2000),
                  lastDate: DateTime(2099),
                ).then((date) {
                  setState(() {
                    _dateTime = date;
                  });
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
