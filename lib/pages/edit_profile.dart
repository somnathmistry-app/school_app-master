import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../styles/app_colors.dart';
import '../styles/common_module/my_widgets.dart';


class EditProfile extends StatefulWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  State<EditProfile> createState() => _EditProfileState();

}

class _EditProfileState extends State<EditProfile> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.themeColor,
        title: const Text('Edit profile',
            style: TextStyle(color: Colors.white,
            fontWeight: FontWeight.w400,
            fontSize: 16)),
        leading: InkWell(
            onTap: () {
              Get.back();
            },
            child: const Icon(Icons.arrow_back_ios_new)),
      actions: [
        Container(
          width: 100,
          margin: const EdgeInsets.only(right: 15,top: 8,bottom: 8),
          child: ElevatedButton.icon(
            onPressed: () {
              Get.back();
            },
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(AppColors.themeColor),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16)))),
            icon: const Icon(Icons.done),
            label: MyWidgets.textView("Done", AppColors.white, 14,),
           ),
         ),
       ],
      ),
      body: Stack(
        children: [
          ListView(
            children:  [
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      MyWidgets.textView('Ishita Samanta', AppColors.themeColor, 20,
                          fontWeight: FontWeight.bold),
                      MyWidgets.textView(
                          'Class  X - B | Roll No - 100-ABRS', AppColors.themeColor, 15),
                    ],
                  ),
                  const CircleAvatar(
                      radius: 40,
                      // backgroundColor: Colors.grey,

                    backgroundImage: AssetImage('assets/images/profile_img.jpg'),
                  ),
                ],
              ),
              const SizedBox(height: 25),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 25,vertical: 10),
                child: TextFormField(
                    keyboardType: TextInputType.number,
                    textInputAction: TextInputAction.next,
                    style: TextStyle(fontSize: 15, color: AppColors.black),
                    initialValue: '5824  5824  6874  4128',
                    decoration: InputDecoration(
                      hintStyle: const TextStyle(color: Colors.black),
                      fillColor: AppColors.themeColorLight,
                      filled: true,
                      contentPadding: const EdgeInsets.symmetric(
                          horizontal: 16.0, vertical: 16.0),
                      hintText: 'Enter Aadhar No.',
                      labelText: '   Change Aadhar No.',
                      labelStyle: const TextStyle(
                          fontSize: 13,
                          color: Colors.black,
                          fontStyle: FontStyle.normal),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide(
                            color: AppColors.black,
                          )),
                    )
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 25,vertical: 10),
                child: TextFormField(
                    keyboardType: TextInputType.name,
                    textInputAction: TextInputAction.next,
                    style: TextStyle(fontSize: 15, color: AppColors.black),
                    initialValue: 'abhiraj@gmail.com',
                    decoration: InputDecoration(
                      hintStyle: const TextStyle(color: Colors.black),
                      fillColor: AppColors.themeColorLight,
                      filled: true,
                      contentPadding: const EdgeInsets.symmetric(
                          horizontal: 16.0, vertical: 16.0),
                      hintText: 'Enter Mail ID',
                      labelText: '   Change Mail ID',
                      labelStyle: const TextStyle(
                          fontSize: 13,
                          color: Colors.black,
                          fontStyle: FontStyle.normal),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide(
                            color: AppColors.black,
                          )),
                    )
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 25,vertical: 10),
                child: TextFormField(
                    keyboardType: TextInputType.name,
                    textInputAction: TextInputAction.next,
                    style: TextStyle(fontSize: 15, color: AppColors.black),
                    initialValue: 'Richita Samanta',
                    // validator: (input) =>
                    // input!.isEmpty ? "Enter Your Name" : null,
                    decoration: InputDecoration(
                      hintStyle: const TextStyle(color: Colors.black),
                      fillColor: AppColors.themeColorLight,
                      filled: true,
                      contentPadding: const EdgeInsets.symmetric(
                          horizontal: 16.0, vertical: 16.0),
                      hintText: 'Enter Mother\'s name',
                      labelText: '   Change Mother\'s name',
                      labelStyle: const TextStyle(
                          fontSize: 13,
                          color: Colors.black,
                          fontStyle: FontStyle.normal),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide(
                            color: AppColors.black,
                          )),
                    )
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 25,vertical: 10),
                child: TextFormField(
                    keyboardType: TextInputType.name,
                    textInputAction: TextInputAction.next,
                    style: TextStyle(fontSize: 15, color: AppColors.black),
                    initialValue: 'Sujit Samanta',
                    // validator: (input) =>
                    // input!.isEmpty ? "Enter Your Name" : null,
                    decoration: InputDecoration(
                      hintStyle: const TextStyle(color: Colors.black),
                      fillColor: AppColors.themeColorLight,
                      filled: true,
                      contentPadding: const EdgeInsets.symmetric(
                          horizontal: 16.0, vertical: 16.0),
                      hintText: 'Enter Father\'s name',
                      labelText: '   Change Father\'s name',
                      labelStyle: const TextStyle(
                          fontSize: 13,
                          color: Colors.black,
                          fontStyle: FontStyle.normal),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide(
                            color: AppColors.black,
                          )),
                    )
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 25,vertical: 10),
                child: TextFormField(
                    keyboardType: TextInputType.name,
                    textInputAction: TextInputAction.next,
                    style: TextStyle(fontSize: 15, color: AppColors.black),
                    initialValue: 'MAMC,Durgapur',
                    // validator: (input) =>
                    // input!.isEmpty ? "Enter Your Name" : null,
                    decoration: InputDecoration(
                      hintStyle: const TextStyle(color: Colors.black),
                      fillColor: AppColors.themeColorLight,
                      filled: true,
                      contentPadding: const EdgeInsets.symmetric(
                          horizontal: 16.0, vertical: 16.0),
                      hintText: 'Enter Address',
                      labelText: '   Change Address',
                      labelStyle: const TextStyle(
                          fontSize: 13,
                          color: Colors.black,
                          fontStyle: FontStyle.normal),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide(
                            color: AppColors.black,
                          )),
                    )
                ),
              ),
              const SizedBox(height: 20),
            ],
          )
        ],
      ),
    );
  }

}
