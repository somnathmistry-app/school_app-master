import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:school_app/pages/home_page.dart';
import 'package:school_app/styles/app_colors.dart';

import '../styles/common_module/my_widgets.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();

}

class _SplashScreenState extends State<SplashScreen> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Container(
          height: double.infinity,
          width: double.infinity,
          color: AppColors.themeColor,
          child: Center(
              child: MyWidgets.textView('Splash Screen', Colors.white, 18)),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () async {
      await Get.off(() => const HomePage());
      // Navigator.pushNamedAndRemoveUntil(context, MyRoutes.loginRout, (route) => false);
    });

  }
}
