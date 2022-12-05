import 'package:flutter/material.dart';
import 'package:fhe_template/state_util.dart';
import '../view/register_view.dart';

class RegisterController extends State<RegisterView> implements MvcController {
  static late RegisterController instance;
  DateTime date = DateTime(2022, 12, 24);
  late int radio = 0;
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
    setState(() => radio = (value as int?)!);
  }

  setValueDate(date) {
    setState(() => condition = date);
  }
}
