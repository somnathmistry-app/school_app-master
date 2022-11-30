import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../styles/app_colors.dart';
import '../../styles/common_module/app_bar.dart';


class AnswerQuery extends StatelessWidget {
  const AnswerQuery({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: MyAppBars.adminAppBar(''),
        backgroundColor: Colors.black87,
        body: ListView(
          children: [
            Container(
              width: double.infinity,
              padding: const EdgeInsets.only(left: 20,top: 15,bottom: 15),
              margin: const EdgeInsets.only(left: 10,right: 10,top: 20),
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),
                color: AppColors.darkGrey,),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Class  X - B',style: TextStyle(fontSize: 14,color: AppColors.lightSeeGreen)),
                  Text('Ishita Chakraborty',style: TextStyle(fontSize: 16,color: AppColors.lightSeeGreen)),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.only(left: 20,top: 15,bottom: 15),
              margin: const EdgeInsets.only(left: 10,right: 10,top: 20),
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),
                color: AppColors.darkGrey,),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Subject',style: TextStyle(fontSize: 14, color: AppColors.lightSeeGreen)),
                  Text('Mathematics',style: TextStyle(fontSize: 16, color: AppColors.lightSeeGreen)),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.only(left: 20,top: 15,bottom: 15),
              margin: const EdgeInsets.only(left: 10,right: 10,top: 20),
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),
                color: AppColors.darkGrey,),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Questions',style: TextStyle(fontSize: 14,color: AppColors.lightSeeGreen)),
                  Text('1. Electron attributes negative charge, protons attribute '
                      'positive charge. An atom has both but why there is no charge?',
                      style: TextStyle(fontSize: 16,color: AppColors.lightSeeGreen)),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.only(left:10,top: 15,bottom: 15),
              margin: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: AppColors.darkGrey,),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Description',style: TextStyle(fontSize: 14,color: AppColors.lightSeeGreen)),
                  const SizedBox(height: 10,),
                  Container(
                    margin: const EdgeInsets.only(right: 10),
                    child: TextFormField(
                      keyboardType: TextInputType.multiline,
                      minLines: 6, // any number you need (It works as the rows for the textarea)
                      maxLines: null,
                      decoration: InputDecoration(
                        hintText: 'Write a question....',
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: AppColors.lightSeeGreen,
                          ),
                          borderRadius: const BorderRadius.all(Radius.circular(15))
                        ),
                        hintStyle: TextStyle(color: AppColors.lightSeeGreen),
                        border: const OutlineInputBorder(
                            borderRadius:  BorderRadius.all(Radius.circular(15)),
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
                style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.teal),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)))),
                child: const Text('Send',style: TextStyle(fontSize: 16,)),
              ),
            ),
            const SizedBox(height: 20,),
          ],
        ),
      );
  }
}
