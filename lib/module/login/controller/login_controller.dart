import 'package:fhe_template/core.dart';
import 'package:flutter/material.dart';

class LoginController extends State<LoginView> implements MvcController {
  static late LoginController instance;
  late LoginView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  bool condition = false;
  setValue(value) {
    setState(() => condition = value);
  }

  moveToRegiter() async {
    await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const RegisterView(),
      ),
    );
  }

  diaogLogin() async {
    // await HDShowInfoDialog(context, "Pesan", "Login Berhasil", "OK");
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const DashboardView()),
    );
  }
}
