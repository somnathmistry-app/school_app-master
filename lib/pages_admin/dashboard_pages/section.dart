import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:i_learning/pages_admin/dashboard_pages/student_details.dart';
import 'package:i_learning/styles/app_colors.dart';

import '../../styles/common_module/app_bar.dart';


class Sections extends StatelessWidget {
 Sections({Key? key}) : super(key: key);
  List<String> section =['A','B'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.darkGrey,
      appBar: MyAppBars.adminAppBar('Select Class'),
      body:
      ListView.builder(
        itemCount: section.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              Get.to(()=> const StudentDetails());
            },
            child: Container(
              height: 50,
              padding: const EdgeInsets.only(top: 8),
              decoration: const  BoxDecoration(border: Border(
                  bottom: BorderSide(
                      color: Colors.grey))),
              child:  Text('   Section  ${section[index]}',style: const TextStyle(
                  fontSize: 16,
                  color: Colors.white)),),
          );
        },),
    );
  }
}
