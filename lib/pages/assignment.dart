import 'package:flutter/material.dart';

import '../styles/app_colors.dart';
import '../styles/common_module/app_bar.dart';


class Assignment extends StatelessWidget {
  const Assignment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBars.myAppBar('Assignment'),
      body: Column(
        children: [
            Expanded(
              child: ListView.builder(
                itemCount: 3,
                itemBuilder: (context, index) {
                return Container(
                  decoration: BoxDecoration(
                      color: AppColors.themeColorLight,
                      borderRadius: BorderRadius.circular(15)),
                  margin: const EdgeInsets.all(8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
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
                          child: Container(
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                                color: AppColors.lightSeeGreen,
                                borderRadius: BorderRadius.circular(8)),
                            child: const Text('Mathematics'),)
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
                          child: const Text('Surface Areas and Volumes',style: TextStyle(
                            color: Colors.black,fontSize: 16)),
                        ),
                        Container(
                          padding: const EdgeInsets.all(8),
                          child: Row(
                            mainAxisAlignment : MainAxisAlignment.spaceBetween,
                            children: const [
                              Text('  Assign Date',style: TextStyle(
                                  color: Colors.grey)),
                              Text('15 Dec, 2022  ',style: TextStyle(
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
                              Text('  Last date of submission',
                                  style: TextStyle(
                                  color: Colors.grey)),
                              Text('16 Jan, 2023  ',style: TextStyle(
                                color: Colors.black,
                              )),
                            ],
                          ),
                        ),
                        Container(
                          height: 45,
                          decoration: BoxDecoration(
                            color: AppColors.themeColor,
                            borderRadius: const BorderRadius.only(bottomRight: Radius.circular(15),bottomLeft: Radius.circular(15)),
                          ),
                          child: const Center(
                            child: Text('To Be Submitted',style: TextStyle(
                                color: Colors.white,fontSize: 16)),
                          ),
                        ),
                      ]),
                );
              },
              ))
        ],
      )
    );
  }
}
