import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:school_app/styles/app_colors.dart';
import 'package:school_app/styles/common_module/app_bar.dart';

import 'event_details.dart';

class SchoolEvents extends StatelessWidget {
  const SchoolEvents({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: MyAppBar.myAppBar('Events & Programmes'),
      body: ListView.builder(
        itemCount: 3,
        shrinkWrap: true,
        itemBuilder: (context, index) {
        return InkWell(
          onTap: () {
            Get.to(()=> const EventDetails());
          },
          child: Container(
            margin: const EdgeInsets.all(8),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),  color: AppColors.themeColorLight,),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 15,),
                  const Text('   Fishing Tournament',style: TextStyle(fontSize: 16)),
                  const SizedBox(height: 10,),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(width: 15,),
                  Container(
                    height: 80,
                    width: 80,
                    decoration:  BoxDecoration(
                        image: const DecorationImage(image: AssetImage('assets/images/event_img.jpg'),fit: BoxFit.cover),
                        color: Colors.grey,borderRadius: BorderRadius.circular(15)),),
                  const SizedBox(width: 15,),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.access_time,size: 22,color: AppColors.themeColor),
                            Text(' 06 Jan 21, 09:00 AM', style: TextStyle(color: AppColors.themeColor),)
                          ],
                        ),
                        Container(
                          padding: const EdgeInsets.only(right: 10),
                            child: const Text(
                              'A sleepover is a great treat for kids.'
                                  ' Many schools use such an event as '
                                  'the culminate ting activity of the school year . . . ',
                              textAlign: TextAlign.justify,
                            )
                        ),
                      ],
                    ),
                  )
                ],
              ),const SizedBox(height: 15,),
            ]),
          ),
        );
      },),
    );
  }
}
