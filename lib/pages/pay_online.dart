import 'package:flutter/material.dart';
import 'package:school_app/styles/common_module/my_snack_bar.dart';

import '../styles/app_colors.dart';
import '../styles/common_module/app_bar.dart';


class PayOnline extends StatelessWidget {
  const PayOnline({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: MyAppBars.myAppBar(''),
        body: Stack(
          children: [
            Column(
              children: [
                const SizedBox(height: 15,),
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
                      Text('  Receipt No.',style: TextStyle(color: Colors.grey)),
                      Text('58722  ',style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      )),
                    ],
                  ),
                ),
                const SizedBox(height: 15,),
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
                const SizedBox(height: 15,),
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: const BoxDecoration(
                      border: Border(
                          bottom: BorderSide(
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
                const SizedBox(height: 15,),
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
                const SizedBox(height: 15,),
              ],
            ),
            Positioned(
              bottom: 20,
              right: 0,
              left: 0,
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 40,),
                height: 40,
                child: ElevatedButton(
                  onPressed: () {
                    MySnackbar.infoSnackBar('Pay Online', 'Feature will be available soon!!');
                  },
                  style: ButtonStyle(backgroundColor: MaterialStateProperty.all(AppColors.themeColor),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12)))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text('Pay Online',style: TextStyle(fontSize: 16,)),
                      SizedBox(width: 10,),
                      Icon(Icons.arrow_forward),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
