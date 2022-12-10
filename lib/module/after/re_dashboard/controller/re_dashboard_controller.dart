import 'package:flutter/material.dart';
import 'package:fhe_template/state_util.dart';
import '../../re_profile/view/re_profile_view.dart';
import '../view/re_dashboard_view.dart';

class ReDashboardController extends State<ReDashboardView>
    implements MvcController {
  static late ReDashboardController instance;
  late ReDashboardView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  moveToProfil() async {
    await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const ReProfileView()),
    );
  }
}
