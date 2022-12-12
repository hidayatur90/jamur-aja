import 'package:fhe_template/module/login/view/login_view.dart';
import 'package:fhe_template/setup.dart';
import 'package:fhe_template/state_util.dart';
import 'package:flutter/material.dart';

void main() async {
  await initialize();

  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      navigatorKey: Get.navigatorKey,
      title: 'Jamur Aja!',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: const ReLoginView(),
    ),
  );
}
