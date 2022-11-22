import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:school_app/pages/bottom_nav_bar.dart';
import '../apis/login_api.dart';
import '../styles/common_module/my_alert_dilog.dart';
import '../styles/common_module/my_snack_bar.dart';


class LoginController extends GetxController{
  TextEditingController emailTEC = TextEditingController();
  TextEditingController passwordTEC = TextEditingController();


  // TextEditingController name = TextEditingController();
  // TextEditingController regEmail = TextEditingController();
  // TextEditingController regPassword = TextEditingController();
  // TextEditingController regRepassword = TextEditingController();


  static var isLoading = false.obs;

  //static var isLogin = 'false';

  getLogin () async {
    MyAlertDialog.circularProgressDialog();
    final box = GetStorage();
    isLoading(true);
    var apiResponse = await LogInApi.getLogin(emailTEC.text, passwordTEC.text);

    if(apiResponse!=null){

      if(apiResponse.response=='ok'){

        String id = apiResponse.userData!.id.toString();
        String email = apiResponse.userData!.email.toString();


        box.write('id', id);
        box.write('email', email);
        box.write('isLogin', isLoading.value);
        //print(box.read('isLogin'));
        Get.off(() => const BottomNavPage());
        MySnackbar.successSnackBar('Login Succeed', 'Welcome');
      }
      else if(apiResponse.response=='invalid email'){
        Get.back();
        MySnackbar.infoSnackBar('Invalid Email', 'Invalid email, please try again with another one');

      }else if(apiResponse.response=='invalid Password!'){
        Get.back();
        MySnackbar.infoSnackBar('Invalid password', 'Invalid password, please try again with another one');

      }else{
        Get.back();
        MySnackbar.errorSnackBar('Server Down', 'Please try again later');
      }

    }else{
      Get.back();
      MySnackbar.errorSnackBar('Server Down', 'Please try again later');
    }
  }
}