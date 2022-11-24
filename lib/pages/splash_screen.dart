import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:school_app/pages/home_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();

}

class _SplashScreenState extends State<SplashScreen> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
              height: double.infinity,
              width: double.infinity,
              // color: AppColors.themeColor,
              child: Image.asset('assets/images/bg_c.jpg',fit: BoxFit.cover,)
          ),
          Positioned(
            top: 140,
            right: 50,
            child: Container(
              height: 120,
              width: 120,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(25),
                  image: const DecorationImage(
                      image: AssetImage('assets/images/logo.png'))),
            ),
          ),
        ],
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 4), () async {
      await Get.off(() => const HomePage());
      // Navigator.pushNamedAndRemoveUntil(context, MyRoutes.loginRout, (route) => false);
    });

  }
}
