import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:school_app/pages/edit_profile.dart';

import '../styles/app_colors.dart';
import '../styles/common_module/my_widgets.dart';
import '../styles/common_module/app_bar.dart';


class ProfileDetails extends StatelessWidget {
  const ProfileDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     return SafeArea(
       child: Scaffold(
         appBar: MyAppBars.myAppBar('My Profile'),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 30,),
              Hero(
                tag: 'profilePic',
                child: Container(
                  height: 80,
                  width: 80,
                //  margin: const EdgeInsets.symmetric(horizontal: 165, vertical: 28),
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      border: Border.all(color: AppColors.themeColor, width: 3),
                      image: const DecorationImage(image: AssetImage('assets/images/profile_img.jpg'),fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(40)
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 20,),
                  MyWidgets.textView('Ishita Samanta', AppColors.themeColor, 20,
                      fontWeight: FontWeight.bold),
                  MyWidgets.textView(
                      'Class  X - B | Roll No - 100ABRS', AppColors.black, 15),
                  MyWidgets.textView(
                      'abhiraj@gmail.com', AppColors.black, 15),
                ],
              ),
              // Padding(
              //   padding: const EdgeInsets.symmetric(horizontal: 20,),
              //   child: Container(
              //     height: 1.8,
              //     width: double.infinity,
              //     color: Colors.grey,
              //   ),
              // ),
              // Column(
              //   crossAxisAlignment: CrossAxisAlignment.start,
              //   children: [
              //     const SizedBox(height: 23,),
              //     MyWidgets.textView(
              //         'Mother\'s Name - Richita Samanta', AppColors.black, 15),
              //     MyWidgets.textView(
              //         'Father\'S Name - Sujit Samanta', AppColors.black, 15),
              //     MyWidgets.textView(
              //         'Address  - MAMC, Durgapur', AppColors.black, 15),
              //     MyWidgets.textView(
              //         'Aadhar No.  -   5824  5824  6874  4128', AppColors.black, 15),
              //     const SizedBox(height: 5,),
              //   ],
              // ),
              const SizedBox(height: 23,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20,),
                child: Container(
                  height: 1.8,
                  width: double.infinity,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(height: 15,),
              InkWell(
                onTap: () {
                  Get.to(()=> const EditProfile());
                },
                child: Row(
                  children: [
                    const SizedBox(width: 25,),
                     SizedBox(
                      height: 30,
                      width: 30,
                      child: Icon(Icons.edit,color: AppColors.themeColor),
                    ),
                    MyWidgets.textView('    Edit Profile', AppColors.black, 14)
                  ],
                ),
              ),const SizedBox(height: 15),
              Row(
                children: [
                  const SizedBox(width: 25,),
                  SizedBox(
                    height: 30,
                    width: 30,
                    child: Icon(Icons.account_circle_sharp,color: AppColors.themeColor),
                  ),
                  MyWidgets.textView('    Change  Password', AppColors.black, 14)
                ],
              ),
              const SizedBox(height: 15,),
              Row(
                children: [
                  const SizedBox(width: 25,),
                  SizedBox(
                    height: 30,
                    width: 30,
                    child: Icon(Icons.notifications_active,color: AppColors.themeColor),
                  ),
                  MyWidgets.textView('    Notification', AppColors.black, 14)
                ],
              ),
              const SizedBox(height: 15,),
              Row(
                children: [
                  const SizedBox(width: 25,),
                  SizedBox(
                    height: 30,
                    width: 30,
                    child: Icon(Icons.perm_contact_calendar_outlined,color: AppColors.themeColor),
                  ),
                  MyWidgets.textView('    Contact Us', AppColors.black, 14)
                ],
              ), const SizedBox(height: 15,),
              Row(
                children: [
                  const SizedBox(width: 25,),
                  SizedBox(
                    height: 30,
                    width: 30,
                    child: Icon(Icons.star,color: AppColors.themeColor),
                  ),
                  MyWidgets.textView('    Rate App', AppColors.black, 14)
                ],
              ), const SizedBox(height: 13,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20,),
                child: Container(
                  height: 1.8,
                  width: double.infinity,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(height: 25,),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MyWidgets.textView('Send Feedback', Colors.black, 14),
                  const SizedBox(height: 14,),
                  MyWidgets.textView('Terms & Conditions', Colors.black, 14),
                ],
              )

            ],
          ),
        ),
       ),
     );
  }
}
