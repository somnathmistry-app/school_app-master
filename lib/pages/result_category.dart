import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:i_learning/pages/result_list.dart';

import '../styles/app_colors.dart';
import '../styles/common_module/app_bar.dart';


class ResultCategory extends StatelessWidget {
  ResultCategory({Key? key}) : super(key: key);

  List<String> gridText = ['Unit Tests', 'Assignment\nResult','Practicals', 'Final Result', ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBars.myAppBar('Check Result'),
      body: Center(
        child: GridView.builder(
          gridDelegate:
          const SliverGridDelegateWithFixedCrossAxisCount(
            childAspectRatio: 7/5,
              crossAxisCount: 3),
          itemCount: gridText.length,
          padding: const EdgeInsets.only(top: 15,left: 5,right: 5),
          itemBuilder:
              (BuildContext context, int index) {
            return InkWell(
              onTap: () {
                Get.to(()=> const ResultList());
              },
              child: Container(
               // height: 100,
                decoration: BoxDecoration(
                    color: AppColors.themeColorLight,
                    borderRadius:
                    BorderRadius.circular(15)),
                padding: EdgeInsets.zero,
                margin: const EdgeInsets.all(5),
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const SizedBox(height: 10,),
                    Text(gridText[index],
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: AppColors.black,
                            fontSize: 13)),
                    const SizedBox(height: 10,),
                    const Text('2022',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 11)
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
