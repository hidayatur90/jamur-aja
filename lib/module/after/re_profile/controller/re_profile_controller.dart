import 'package:flutter/material.dart';
import 'package:fhe_template/state_util.dart';
import '../../re_login/view/re_login_view.dart';
import '../view/re_profile_view.dart';

class ReProfileController extends State<ReProfileView>
    implements MvcController {
  static late ReProfileController instance;
  late ReProfileView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  doLogout() async {
    await Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => const ReLoginView()),
    );
  }
}
