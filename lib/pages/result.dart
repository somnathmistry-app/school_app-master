import 'package:flutter/material.dart';
import 'package:school_app/styles/common_module/my_widgets.dart';
import 'package:sliding_sheet/sliding_sheet.dart';

import '../styles/app_colors.dart';
import '../styles/common_module/app_bar.dart';

class Result extends StatelessWidget {
  const Result({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBars.myAppBar(''),
      body: Stack(
        children: [
          Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              color: AppColors.themeColor),
          Positioned(
              top: 10,
              right: 0,
              left: 0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Stack(
                    children: [
                      Container(
                        height: 110,
                        width: 110,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(55)),
                      ),
                      Positioned(
                        right: 0,
                        left: 0,
                        top: 0,
                        bottom: 0,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              height: 90,
                              width: 90,
                              decoration: BoxDecoration(
                                  color: Colors.lightBlueAccent,
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Colors.black,
                                      blurRadius: 2.0,
                                      spreadRadius: 0.0,
                                      offset: Offset(2.0, 2.0), // shadow direction: bottom right
                                    )
                                  ],
                                  borderRadius: BorderRadius.circular(45)),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Text('98.00%',
                                      style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold)),
                                  Text('Grade A',
                                      style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold)),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              )),
          SlidingSheet(
            elevation: 8,
            color: Colors.white,
            cornerRadius: 18,
            snapSpec: const SnapSpec(
              snap: true,
              snappings: [0.8,0.8,1.0],
              positioning: SnapPositioning.relativeToAvailableSpace,
            ),
            builder: (context, state) {
              return Column(
                children: [
                  const SizedBox(height: 15,),
                  const Center(
                    child: Text('You are Excellent!!',
                        style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold)),
                  ),
                  const SizedBox(height: 10,),
                  const Center(
                    child: Text('Abhiraj Samanta',
                        style: TextStyle(fontSize: 21,fontWeight: FontWeight.bold)),
                  ),const SizedBox(height: 35,),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 15,),
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                      color: AppColors.themeColorLight,
                    ),
                    child: ListView.builder(
                      itemCount: 6,
                      padding: EdgeInsets.zero,
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) {
                          return  Container(
                            padding: const EdgeInsets.symmetric(vertical: 15),
                            decoration: BoxDecoration(
                              //borderRadius: BorderRadius.circular(10),
                              border: const Border(
                                bottom: BorderSide(color: Colors.grey,width: 0.9)
                              ),
                              color: AppColors.themeColorLight,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                MyWidgets.textView('Mathematics', Colors.black, 15),
                                MyWidgets.textView('    100', Colors.black, 14),
                                Row(
                                  children: [
                                    MyWidgets.textView('86', Colors.black, 14),
                                    MyWidgets.textView(' - B', Colors.black, 14),
                                  ],
                                ),
                              ],
                            ),
                          );
                        },

                    ),
                  ),
                  const SizedBox(height: 30,),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 40,),
                    height: 40,
                    child: ElevatedButton(
                      onPressed: () { 
                        
                      },
                    style: ButtonStyle(backgroundColor: MaterialStateProperty.all(AppColors.themeColor),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12)))),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text('Download Pdf',style: TextStyle(fontSize: 16)),
                          SizedBox(width: 10,),
                          Icon(Icons.file_copy_outlined)
                        ],
                      ),
                    ),
                  ),const SizedBox(height: 85,),
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}
