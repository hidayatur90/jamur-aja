import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

Future HDShowInfoDialog(
  BuildContext context,
  String info,
  String message,
  String textButton,
) async {
  await showDialog<void>(
    context: context,
    barrierDismissible: true,
    builder: (BuildContext context) {
      return SizedBox(
        height: 20.0,
        child: AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18.0),
          ),
          title: Text(
            info,
            style: const TextStyle(
              fontFamily: 'Red Hat Display',
              color: Colors.amberAccent,
            ),
          ),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Center(
                  child: Text(
                    message,
                    style: const TextStyle(
                      fontFamily: 'Red Hat Display',
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ),
          actions: <Widget>[
            SizedBox(
              width: 100,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: HexColor('#FFDE5B'),
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(
                  textButton,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    },
  );
}
