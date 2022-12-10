import 'package:fhe_template/core.dart';
import 'package:flutter/material.dart';

class ReLoginController extends State<ReLoginView> implements MvcController {
  static late ReLoginController instance;
  late ReLoginView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  moveToRegister() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const ReRegisterView()),
    );
  }

  doLogin() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => const ReDashboardView()),
    );
  }
}
