import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:i_learning/pages/result.dart';

import '../styles/app_colors.dart';
import '../styles/common_module/app_bar.dart';


class ResultList extends StatelessWidget {
  const ResultList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> months =['January', 'February','March','April','May'];
    return Scaffold(
      appBar: MyAppBars.myAppBar('List of result'),
      body: Column(
        children: [
          Expanded(
              child: ListView.builder(
                  itemCount: months.length,
                  padding: const EdgeInsets.only(top: 0,bottom: 30),
                  itemBuilder: (context, index) {
                    return Container(
                      decoration: BoxDecoration(
                          color: AppColors.themeColorLight,
                          borderRadius: BorderRadius.circular(15)),
                      margin: const EdgeInsets.all(8),
                      child: Column(
                          children: [
                            Container(
                                padding: const EdgeInsets.all(8),
                                decoration: const BoxDecoration(
                                ),
                                child: Container(
                                  padding: const EdgeInsets.all(8),
                                  decoration: BoxDecoration(
                                      color: AppColors.lightSeeGreen,
                                      borderRadius: BorderRadius.circular(8)),
                                  child:  Text('Unit Test - ${(index + 1)}'),)
                            ),
                            Container(
                              padding: const EdgeInsets.all(8),
                              decoration: const BoxDecoration(
                                  border: Border(
                                      bottom:
                                      BorderSide(
                                          color: Colors.grey,
                                          width: 0.2)
                                  )
                              ),
                              child: Row(
                                mainAxisAlignment : MainAxisAlignment.spaceBetween,
                                children:  [
                                  const Text('  Month',style: TextStyle(color: Colors.grey)),
                                  Text('${months[index]}  ',style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  )),
                                ],
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.all(8),
                              decoration: const BoxDecoration(
                                  border: Border(
                                      bottom:
                                      BorderSide(
                                          color: Colors.grey,
                                          width: 0.2)
                                  )
                              ),
                              child: Row(
                                mainAxisAlignment : MainAxisAlignment.spaceBetween,
                                children: const [
                                  Text('  Total Marks',style: TextStyle(
                                      color: Colors.grey)),
                                  Text('30%  ',style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  )),
                                ],
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                Get.to(() => const Result());
                              },
                              child: Container(
                                height: 45,
                                decoration: BoxDecoration(
                                  color: AppColors.themeColor,
                                  borderRadius: const BorderRadius.only(
                                      bottomRight: Radius.circular(15),
                                      bottomLeft: Radius.circular(15)
                                  ),
                                ),
                                child: Row(
                                  mainAxisAlignment : MainAxisAlignment.center,
                                  children: const [
                                    Text('View Details  ',style: TextStyle(
                                        color: Colors.white,fontSize: 16)),
                                    Icon(Icons.arrow_forward,color: Colors.white)
                                  ],
                                ),
                              ),
                            ),
                          ]),
                    );
                  })
          ),
        ],
      ),
    );
  }
}
