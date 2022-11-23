
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controllers/banner_controller.dart';
import '../../styles/app_colors.dart';
import '../../styles/common_module/admin_appbar.dart';
import '../../styles/common_module/my_widgets.dart';
import 'package:image_picker/image_picker.dart';



class AddImage extends StatefulWidget {
  const AddImage({Key? key}) : super(key: key);

  @override
  State<AddImage> createState() => _AddImageState();
}

class _AddImageState extends State<AddImage> {

  UploadBannerController uploadBannerController = Get.put(UploadBannerController());
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.darkGrey,
      appBar: AdminAppBar.myAppBar(''),
      body: SingleChildScrollView(
              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: 10,
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          uploadBannerController.getImage(ImageSource.gallery);
                        });
                      },
                      child:
                      uploadBannerController.selectedImageFile == null ?
                      Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                            color: AppColors.darkGrey,
                            borderRadius: BorderRadius.circular(10)),
                        child: Icon(Icons.cloud_upload_rounded,size: 65,color: AppColors.themeColorLight),
                      ):Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(image: FileImage(uploadBannerController.selectedImageFile!),
                                fit: BoxFit.cover)),
                      ),
                    ),
                    const SizedBox(height: 20,),
                    Text('Click here to upload file',style: TextStyle(color: AppColors.themeColorLight)),
                    const SizedBox(height: 15,),
                    Container(
                      width: double.infinity,
                      margin: const EdgeInsets.symmetric(horizontal: 22),
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: AppColors.darkGrey,),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text('  Title :',style: TextStyle(color: Colors.white70,fontSize: 14)),
                          const SizedBox(height: 10,),
                          TextFormField(
                              textInputAction: TextInputAction.next,
                              controller: uploadBannerController.titleTEC,
                              style: TextStyle(fontSize: 15, color: AppColors.black),
                              decoration: InputDecoration(
                                fillColor: AppColors.themeColorLight,
                                filled: true,
                                hintText: 'Enter Image Title...',
                                contentPadding: const EdgeInsets.symmetric(
                                    horizontal: 16.0, vertical: 16.0),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8),
                                    borderSide: BorderSide(
                                      color: AppColors.black,
                                    )
                                ),
                              )
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 15,),
                    Container(
                      width: double.infinity,
                      margin: const EdgeInsets.symmetric(horizontal: 22),
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: AppColors.darkGrey,),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text('  Date :',style: TextStyle(color: Colors.white70,fontSize: 14)),
                          const SizedBox(height: 10,),
                          TextFormField(
                              textInputAction: TextInputAction.next,
                              controller: uploadBannerController.headlineTEC,
                              style: TextStyle(fontSize: 15, color: AppColors.black),
                              decoration: InputDecoration(
                                fillColor: AppColors.themeColorLight,
                                filled: true,
                                hintText: 'Enter Event Date...',
                                contentPadding: const EdgeInsets.symmetric(
                                    horizontal: 16.0, vertical: 16.0),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8),
                                    borderSide: BorderSide(
                                      color: AppColors.black,
                                    )
                                ),
                              )
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 40),
                    Container(
                      width: 250,
                      height: 43,
                      margin: const EdgeInsets.symmetric(horizontal: 55),
                      child: ElevatedButton(
                          style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.teal),
                              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15.0),
                                  )
                              )
                          ),
                          onPressed: () {
                            if(_formKey.currentState!.validate()){
                              uploadBannerController.uploadBanner();
                              // Get.back();
                            }
                            // Get.to(()=>  const AdminHome());
                          },
                          child: MyWidgets.textView("Upload", AppColors.white, 16)),
                    ),
                    const SizedBox(height: 20),
                  ],
                ),
              ),
            ),
    );
  }
}
/*

 */