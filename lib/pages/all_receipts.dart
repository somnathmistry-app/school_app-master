import 'package:flutter/material.dart';
import 'package:school_app/styles/common_module/app_bar.dart';

import '../styles/app_colors.dart';

class AllReceipts extends StatelessWidget {
  const AllReceipts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBars.myAppBar('All Receipts'),
      body: ListView.builder(
          itemCount: 8,
          padding: const EdgeInsets.only(top: 10,bottom: 30),
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
                          border: Border(
                             bottom: BorderSide(color: Colors.grey,width: 0.2)
                          )
                      ),
                      child: Row(
                        mainAxisAlignment : MainAxisAlignment.spaceBetween,
                        children: const [
                          Text('  Receipt No.',style: TextStyle(color: Colors.grey)),
                          Text('58722  ',style: TextStyle(
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
                          Text('  Month',style: TextStyle(color: Colors.grey)),
                          Text('December  ',style: TextStyle(
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
                          Text('  Last date of payment',style: TextStyle(
                              color: Colors.grey)),
                          Text('15 Dec, 2022  ',style: TextStyle(
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
                          Text('  Total pending amount',style: TextStyle(
                              color: Colors.grey)),
                          Text('₹ 1,600  ',style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          )),
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        // Get.to(() => const PayOnline());
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
                            Text('Pay Now  ',style: TextStyle(
                                color: Colors.white,fontSize: 16)),
                            Icon(Icons.arrow_forward,color: Colors.white)
                          ],
                        ),
                      ),
                    ),
                  ]),
            );
          }),
    );
  }
}
