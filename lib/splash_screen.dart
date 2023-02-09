import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:i_learning/pages/home_page.dart';


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
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              // color: AppColors.themeColor,
              child: Image.asset('assets/images/bg_23.jpg',fit: BoxFit.fill,
              )
          ),
          Positioned(
            right: 60,
            top: 120,
            child: Container(
              height: 120,
              width: 120,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(60),
                  image: const DecorationImage(
                      image: AssetImage('assets/images/logo_white.png'),fit: BoxFit.cover)),
            ),
          ),
        ],
      ),
    );
  }
  //
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () async {
      await Get.off(() => const HomePage());
      // Navigator.pushNamedAndRemoveUntil(context, MyRoutes.loginRout, (route) => false);
    });
  }
}
