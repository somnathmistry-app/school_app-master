import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:school_app/pages_admin/dashboard_pages/section.dart';

import '../../styles/app_colors.dart';
import '../../styles/common_module/app_bar.dart';


class AllClass extends StatelessWidget {
  const AllClass({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:AppColors.darkGrey,
      appBar: MyAppBars.adminAppBar('Select Class'),
      body:
      ListView.builder(
        itemCount: 7,
        itemBuilder: (context, index) {
        return InkWell(
          onTap: () {
            Get.to(()=> Sections());
          },
          child: Container(
            height: 50,
            padding: const EdgeInsets.only(top: 8),
            decoration: const  BoxDecoration(border: Border(
                bottom: BorderSide(
                    color: Colors.grey))),
            child: Text('    Class  ${index+6}', style: const TextStyle(
                fontSize: 16,
                color: Colors.white)),
          ),
        );
      },),
    );
  }
}
