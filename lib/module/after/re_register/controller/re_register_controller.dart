import 'package:flutter/material.dart';
import 'package:fhe_template/state_util.dart';
import '../view/re_register_view.dart';

class ReRegisterController extends State<ReRegisterView>
    implements MvcController {
  static late ReRegisterController instance;
  late ReRegisterView view;
  late int radio = 0;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  setValue(value) {
    setState(() => radio = (value as int?)!);
  }

  doRegister() {}
}
