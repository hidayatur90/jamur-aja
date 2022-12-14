import 'package:fhe_template/module/dashboard/widget/sidebar.dart';
import 'package:flutter/material.dart';
import 'package:fhe_template/core.dart';
import '../controller/dashboard_controller.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({Key? key}) : super(key: key);

  Widget build(context, DashboardController controller) {
    controller.view = this;

    return Scaffold(
      drawer: HDSideBar.side(),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text("Dashboard"),
        actions: const [
          // ElevatedButton.icon(
          //   icon: const Icon(Icons.menu),
          //   label: const Text(""),
          //   style: ElevatedButton.styleFrom(
          //     backgroundColor: Colors.blueGrey,
          //   ),
          //   onPressed: () {
          //     Bar.side();
          //   },
          // ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: const [],
          ),
        ),
      ),
    );
  }

  @override
  State<DashboardView> createState() => DashboardController();
}
