import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:school_app/controllers/login_controller.dart';
import 'package:school_app/pages/log_in.dart';
import 'package:school_app/pages_admin/admin_login.dart';
import 'package:sliding_sheet/sliding_sheet.dart';
import '../styles/app_colors.dart';
import '../styles/common_module/my_widgets.dart';


class LoginPage extends StatelessWidget {
  LoginPage({super.key});
//  const AdminLogin({Key? key}) : super(key: key);

  LoginController loginController = Get.put(LoginController());
  final _key = GlobalKey<FormState>();



  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              color: AppColors.themeColor,
            ),
            Form(
              key: _key,
              child: SlidingSheet(
                elevation: 8,
                color: Colors.white,
                cornerRadius: 16,
                snapSpec: const SnapSpec(
                  // snap: true,
                  snappings: [0.5, 0.7, 1.0],
                  //  positioning: SnapPositioning.relativeToAvailableSpace,
                ),
                builder: (context, state) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(height: 20),
                      Center(
                        child: Container(
                          height: 2.5,
                          width: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: AppColors.darkGrey,
                          ),
                        ),
                      ),const SizedBox(height: 20),
                      Padding(
                        padding: const EdgeInsets.only(right: 22),
                        child: MyWidgets.textView('Student Login',
                            AppColors.themeColor, 20,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 20),
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 30),
                        // height: 50,
                        child: TextFormField(
                          controller: loginController.emailTEC,
                          validator: (input) =>
                          !input!.contains('@')? 'Invalid Email': null,
                          decoration: InputDecoration(
                            fillColor: AppColors.lightSeeGreen,
                            filled: true,
                            label:  const Text('Email'),
                            labelStyle: const TextStyle(
                                fontSize: 13,
                                color: Colors.grey,
                                fontStyle: FontStyle.normal),
                            border:  const OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(12)),
                                borderSide: BorderSide(
                                  color: Colors.grey,
                                )
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 30),
                        // height: 50,
                        child: TextFormField(
                          obscureText: true,
                          validator: (value) =>
                          value!.isEmpty? 'Please Enter a Password': null,
                          controller:loginController.passwordTEC,
                          decoration:  InputDecoration(
                            fillColor: AppColors.lightSeeGreen,
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
                      const SizedBox(height: 30,),
                      SizedBox(
                        width: 250,
                        height: 45,
                        child: ElevatedButton(
                            style: ButtonStyle(backgroundColor: MaterialStateProperty.all(AppColors.themeColor),
                                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15.0),
                                    )
                                )
                            ),
                            onPressed: () {
                              if(_key.currentState!.validate()){
                                loginController.getAdminLogin();
                              }
                            },
                            child: MyWidgets.textView("Log In", AppColors.white, 16)),
                      ),
                      const SizedBox(height: 15,),
                      Padding(
                        padding: const EdgeInsets.only(right: 22),
                        child: MyWidgets.textView('Forget Password?', AppColors.black, 16),
                      ),
                      Container(height: 40,),
                      InkWell(
                        onTap: () {
                          Get.off(()=> AdminLogin());
                        },
                        child: Container(
                          width: double.infinity,
                          //  color: AppColors.themeColorLight,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('   Student Login ',style: TextStyle(fontSize: 16,color: AppColors.themeColor)),
                              Icon(Icons.arrow_forward,color: AppColors.themeColor,),
                              const SizedBox(height: 15,)
                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: 50,
                      )
                    ],
                  );
                },
              ),
            ),
          ],

        ),
      ),
    );
  }
}