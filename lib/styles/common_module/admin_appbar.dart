import 'package:flutter/material.dart';
import 'package:get/get.dart';


class AdminAppBar {
  static AppBar myAppBar(String name) =>
      AppBar(
        elevation: 0,
        backgroundColor: Colors.black,
        title:  Text(name,
            style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w400,
                fontSize: 16)),
        leading: InkWell(
            onTap: () {
              Get.back();
            },
            child: const Icon(Icons.arrow_back_ios_new)),
        centerTitle: true,
      );
}
