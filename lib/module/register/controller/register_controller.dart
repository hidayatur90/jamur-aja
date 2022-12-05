import 'package:flutter/material.dart';
import 'package:fhe_template/state_util.dart';
import '../view/register_view.dart';

class RegisterController extends State<RegisterView> implements MvcController {
  static late RegisterController instance;
  late int joko = 0;
  late RegisterView view;
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
    setState(() => joko = (value as int?)!);
  }
}
