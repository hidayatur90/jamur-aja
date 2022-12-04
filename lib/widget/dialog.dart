import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

typedef AlertAction<T> = void Function(T index);

class HDAlertDialog {
  HDAlertDialog(
      {required this.cancelTitle,
      this.alertTitle = 'Alert',
      this.alertDetailMessage = '',
      required this.alertActionTitles,
      required this.onAlertAction});
  String alertTitle;
  String alertDetailMessage;
  String cancelTitle;
  List<String> alertActionTitles;
  AlertAction<int> onAlertAction;

  void show(BuildContext context) {
    List<Widget> actions = <Widget>[];
    //Customize the cancel button as per the requirement
    Widget actionButton = TextButton(
      child: Text(cancelTitle),
      onPressed: () {
        Navigator.pop(context);
      },
    );
    actions.add(actionButton);
    for (int i = 0; i < alertActionTitles.length; i++) {
      Widget actionButton = TextButton(
        child: Text(alertActionTitles[i]),
        onPressed: () {
          Navigator.pop(context);
          onAlertAction(i);
        },
      );
      actions.add(actionButton);
    }
    Widget _getAlertDialog(List<Widget> actions) {
      if (Platform.isIOS) {
        return CupertinoAlertDialog(
            title: Text(alertTitle),
            content: Text(alertDetailMessage),
            actions: actions);
      } else {
        return AlertDialog(
            title: Text(alertTitle),
            content: Text(alertDetailMessage),
            actions: actions);
      }
    }
  }
}
