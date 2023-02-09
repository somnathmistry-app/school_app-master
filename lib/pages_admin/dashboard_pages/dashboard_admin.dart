import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:i_learning/pages/log_out_page.dart';
import 'package:i_learning/pages_admin/dashboard_pages/all_class.dart';

import '../../styles/app_colors.dart';


class DashBoardAdmin extends StatelessWidget {
  DashBoardAdmin({Key? key}) : super(key: key);

  List<String> gridText = [
    'Students',
    'On Leave',
    'Holiday & Events',
    'LogOut',
  ];

  List<Widget> gridPage=
  [
    const AllClass(),
    const AllClass(),
    const AllClass(),
    const LogOut(),
  ];

  List<Icon> gridIcons =  [
    Icon(Icons.person, size: 30, color: AppColors.themeColor),
    const Icon(Icons.library_books_sharp, size: 30, color: Colors.amber),
    const Icon(Icons.holiday_village, size: 30, color: Colors.teal),
    const Icon(Icons.logout, size: 30, color: Colors.red),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              color: Colors.black87,
            ),
            GridView.builder(
              gridDelegate:
              const SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: 1.3,
                  crossAxisCount: 3),
              itemCount: 4,
              padding: const EdgeInsets.only(top: 20),
              itemBuilder:
                  (BuildContext context, int index) {
                return InkWell(
                  onTap: () {
                    Get.to(gridPage[index]);
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: AppColors.themeColorLight,
                        borderRadius:
                        BorderRadius.circular(15)),
                    margin: const EdgeInsets.only(
                        left: 5, right: 5, bottom: 20),
                    child: Column(
                      mainAxisAlignment:
                      MainAxisAlignment.spaceEvenly,
                      children: [
                        gridIcons[index],
                        Text(gridText[index],
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: AppColors.black,
                                fontSize: 14)
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
