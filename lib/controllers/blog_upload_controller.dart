
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:school_app/apis/upload_blog_api.dart';
import '../styles/common_module/my_alert_dilog.dart';
import '../styles/common_module/my_snack_bar.dart';



class UploadBlogController extends GetxController{

  var isLoaded = false.obs;

  TextEditingController titleTEC = TextEditingController();
  TextEditingController headlineTEC = TextEditingController();



  uploadBlog (String imgPath) async {
    MyAlertDialog.circularProgressDialog();
    //final box = GetStorage();
    isLoaded(true);
    var apiResponse = await UploadBlogApi.uploadBlog(titleTEC.text,imgPath, headlineTEC.text,'1');

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