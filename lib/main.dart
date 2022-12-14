import 'package:fhe_template/setup.dart';
import 'package:fhe_template/state_util.dart';
import 'package:flutter/material.dart';

import 'module/after/re_dashboard/view/re_dashboard_view.dart';

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
      // home: const LoginView(),
      home: const ReDashboardView(),
    ),
  );
}
