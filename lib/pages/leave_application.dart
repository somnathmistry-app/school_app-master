import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../styles/app_colors.dart';
import '../styles/common_module/app_bar.dart';

class LeaveApplication extends StatelessWidget {
  const LeaveApplication({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: MyAppBar.myAppBar('Leave form'),
        body: ListView(
          children: [
            Container(
              width: double.infinity,
              padding: const EdgeInsets.only(left: 20,top: 20,bottom: 20),
              margin: const EdgeInsets.only(left: 10,right: 10,top: 20),
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),
                color: Colors.grey[100],),
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: const [
                    Text('Class Teacher',style: TextStyle(fontSize: 14,color: Colors.grey)),
                    Text('Anuradha Chatterjee',style: TextStyle(fontSize: 16,)),
                 ],
               ),
            ),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.only(left:10,top: 15,bottom: 15),
              margin: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.grey[100]),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Application For',style: TextStyle(fontSize: 14,color: Colors.grey)),
                  const SizedBox(height: 10,),
                  Container(
                    margin: const EdgeInsets.only(right: 10),
                    child: TextFormField(
                     initialValue: 'Fever',
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                            borderSide: BorderSide(
                              color: Colors.grey,
                            )
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.only(left:10,top: 15,bottom: 15),
              margin: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.grey[100],),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Description',style: TextStyle(fontSize: 14,color: Colors.grey)),
                  const SizedBox(height: 10,),
                  Container(
                    margin: const EdgeInsets.only(right: 10),
                    child: TextFormField(
                      initialValue: 'Dear Sir, As I am suffering with viral fever I will not be able to '
                          'attend the classes for Today. Please accept this request and kindly grant me leave.',
                      keyboardType: TextInputType.multiline,
                      minLines: 6, // any number you need (It works as the rows for the textarea)
                      maxLines: null,
                      decoration: const InputDecoration(
                        hintText: 'Write Date & Reason....',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                            borderSide: BorderSide(
                              color: Colors.grey,
                            )
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 25,),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 40,),
              height: 40,
              child: ElevatedButton(
                onPressed: () {
                  Get.back();
                },
                style: ButtonStyle(backgroundColor: MaterialStateProperty.all(AppColors.themeColor),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)))),
                child: const Text('Send Request',style: TextStyle(fontSize: 16,)),
              ),
            ),
            const SizedBox(height: 20,),
          ],
        ),
      ),
    );
  }
}
