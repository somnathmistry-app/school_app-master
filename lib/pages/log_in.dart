import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sliding_sheet/sliding_sheet.dart';
import '../controllers/login_controller.dart';
import '../pages_admin/admin_login.dart';
import '../styles/app_colors.dart';
import '../styles/common_module/my_widgets.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  LoginController loginController = Get.put(LoginController());
  final _formKey = GlobalKey<FormState>();

  showMyDialog() async {
    return showDialog(
      context: context,
      barrierColor: Colors.black54,
      barrierDismissible: true,
      builder: (BuildContext context) {
        return AlertDialog(
          content:  const Text('This is a Confidential Login, Are you sure You have Admin Credentials?',
              style: TextStyle(fontSize: 15)
          ),
          title: const Text('Alert !!',style: TextStyle(fontSize: 17,color: Colors.red)),
          actions: [
            SizedBox(
              width: 110,
              height: 35,
              child: ElevatedButton(
                style: ButtonStyle(
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(25))),
                    elevation: MaterialStateProperty.all(0),
                    backgroundColor: MaterialStateProperty.all(Colors.grey[350])),
                child: const Text('Cancel',style: TextStyle(color: Colors.black)),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ),
            SizedBox(
              width: 110,
              height: 35,
              child: ElevatedButton(
                style: ButtonStyle(
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(25))),
                    elevation: MaterialStateProperty.all(0),
                    backgroundColor: MaterialStateProperty.all(Colors.red)),
                child: const Text('Accept',style: TextStyle(color: Colors.white)),
                onPressed: () {
                  Get.off(()=> AdminLogin());
                },
              ),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: const Image(image: AssetImage('assets/images/abc.jpg'),fit: BoxFit.cover),),
          SlidingSheet(
            elevation: 8,
            color: Colors.white,
            cornerRadius: 16,
            snapSpec: const SnapSpec(
              snap: true,
              snappings: [0.9, 0.9, 1.0],
              positioning: SnapPositioning.relativeToAvailableSpace,
            ),
            builder: (context, state) {
              return Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(height: 10),
                    Center(
                      child: Container(
                        height: 3,
                        width: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: AppColors.themeColor,
                        ),
                      ),
                    ),  const SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.only(right: 22),
                      child: MyWidgets.textView('Log In to Continue',
                          AppColors.themeColor, 18,
                          fontWeight: FontWeight.bold),
                    ),const SizedBox(height: 15),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 30),
                      //height: 50,
                      child: TextFormField(
                        controller: loginController.emailTEC,
                        validator: (input) =>
                        !input!.contains('@')? 'Invalid Email': null,
                        decoration:  InputDecoration(
                          fillColor: AppColors.themeColorLight,
                          filled: true,
                          label: const Text('Email'),
                          labelStyle: const TextStyle(
                              fontSize: 13, color: Colors.grey,
                              fontStyle: FontStyle.normal),
                          border: const OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                  Radius.circular(12)
                              ),
                              borderSide: BorderSide(
                                color: Colors.grey,
                             )
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 30),
                      //height: 50,
                      child: TextFormField(
                        obscureText: true,
                        controller: loginController.passwordTEC,
                        validator: (input) =>
                        input!.isEmpty? 'Please Enter Your Password' : null,
                        decoration: InputDecoration(
                          fillColor: AppColors.themeColorLight,
                          filled: true,
                          label: const Text('Password'),
                          labelStyle: const TextStyle(
                              fontSize: 13,
                              color: Colors.grey,
                              fontStyle: FontStyle.normal),
                          border: const OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(12)),
                              borderSide: BorderSide(
                                color: Colors.grey,
                              )
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      width: 250,
                      height: 40,
                      child: ElevatedButton(
                          style: ButtonStyle(backgroundColor: MaterialStateProperty.all(AppColors.themeColor),
                              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15.0),
                                  )
                              )
                          ),
                          onPressed: () {
                            if(_formKey.currentState!.validate()){
                              loginController.getLogin();
                            }
                          },
                          child: MyWidgets.textView("LogIn", AppColors.white, 16)),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 22),
                      child: MyWidgets.textView('Forget Password ?', AppColors.black, 14),
                    ),
                    Container(
                      height: 50,
                      color: Colors.white,
                    ),
                    InkWell(
                      onTap: (){
                        showMyDialog();
                      },
                      child: Container(
                        height: 50,
                        width: double.infinity,
                        color: AppColors.white,
                         child: Row(
                           mainAxisAlignment: MainAxisAlignment.center,
                           children: [
                             Text('Admin Login  ',style: TextStyle(fontSize: 16,color: AppColors.themeColor)),
                             Icon(Icons.arrow_forward,color: AppColors.themeColor,)
                           ],
                         ),
                      ),
                    )
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}