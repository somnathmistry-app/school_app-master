import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import '../apis/upload_banner_api.dart';
import '../styles/common_module/my_alert_dilog.dart';
import '../styles/common_module/my_snack_bar.dart';
import 'package:image_picker/image_picker.dart';



class UploadBannerController extends GetxController{

  var selectedImagePath = ''.obs;
  var isLoaded = false.obs;

  TextEditingController titleTEC = TextEditingController();
  TextEditingController headlineTEC = TextEditingController();

  File? profileImage;

  ImagePicker picker = ImagePicker();

  getProfileImage() async {
    XFile? pickedFile = await ImagePicker().pickImage(
      source: ImageSource.gallery,
      maxWidth: 1800,
      maxHeight: 1800,
    );
    if (pickedFile != null) {
        profileImage = File(pickedFile.path);
    }
  }

  File? selectedImageFile;

  void getImage(ImageSource imageSource) async {
    final pickedFile = await ImagePicker().pickImage(source: imageSource);
    if (pickedFile != null) {
      selectedImagePath.value = pickedFile.path;
      selectedImageFile = File(pickedFile.path);
    }
    else {
      MySnackbar.infoSnackBar('No Image selected', 'Please select a image for your profile');
    }
  }

  uploadBanner () async {
    MyAlertDialog.circularProgressDialog();
    final box = GetStorage();
    isLoaded(true);
    var apiResponse = await UploadBannerApi.uploadBanner(titleTEC.text,selectedImagePath.value, headlineTEC.text,'1');

    if(apiResponse!=null){

      if(apiResponse.res=='ok'){

        // String id = apiResponse.res!.id.toString();
        // String email = apiResponse.userData!.email.toString();

        // box.write('id', id);
        // box.write('email', email);
       // box.write('isLoaded', 'true');
        Get.back();
        MySnackbar.successSnackBar(
            'Submitted', 'Banner has been added',
        );
      }

      else{
        Get.back();
        MySnackbar.errorSnackBar('Server Down', 'Please try again later');
      }

    }else{
      Get.back();
      MySnackbar.errorSnackBar('Server Down', 'Please try again later');
    }
  }
}