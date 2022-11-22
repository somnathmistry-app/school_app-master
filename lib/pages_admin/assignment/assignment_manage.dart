import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:school_app/pages_admin/assignment/check_assignment.dart';
import 'package:school_app/pages_admin/assignment/upload_assignment.dart';

import '../../styles/app_colors.dart';


class AssignmentManage extends StatelessWidget {
  AssignmentManage({Key? key}) : super(key: key);


  List<String> gridText = [
    'Upload',
    'Check',
  ];

  List<Widget> pages = [
    const UploadAssignment(),
     const CheckAssignment(),
  ];

  List<Icon> gridIcons =  [
    const Icon(Icons.upload, size: 35, color: Colors.teal),
    const Icon(Icons.check_circle_outline_sharp, size: 35, color: Colors.amber),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      body: GridView.builder(
        gridDelegate:
        const SliverGridDelegateWithFixedCrossAxisCount(
            childAspectRatio: 1.8,
            crossAxisCount: 2),
        itemCount: gridText.length,
        padding: const EdgeInsets.only(top: 20),
        itemBuilder:
            (BuildContext context, int index) {
          return InkWell(
            onTap: () {
             Get.to(()=> pages[index]);
            },
            child: Container(
              decoration: BoxDecoration(
                  color: AppColors.themeColorLight,
                  borderRadius:
                  BorderRadius.circular(15)),
              margin: const EdgeInsets.only(
                  left: 10, right: 10,),
              child: Column(
                mainAxisAlignment:
                MainAxisAlignment.spaceEvenly,
                children: [
                  gridIcons[index],
                  Text(gridText[index],
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: AppColors.black,
                          fontSize: 16)),
                ],
              ),
            ),
          );
        },
      ),

    );
  }
}
