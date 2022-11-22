import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:school_app/pages_admin/admin_home.dart';
import 'package:school_app/pages/log_in.dart';
import 'package:sliding_sheet/sliding_sheet.dart';
import '../styles/app_colors.dart';
import '../styles/common_module/my_widgets.dart';


class AdminLogin extends StatelessWidget {
  const AdminLogin({Key? key}) : super(key: key);
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
              color: AppColors.darkGrey,
              ),
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
                    ),  const SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.only(right: 22),
                      child: MyWidgets.textView('Admin Login',
                          AppColors.darkGrey, 20,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 20),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 30),
                      height: 50,
                      child: TextFormField(
                        decoration: InputDecoration(
                          fillColor: AppColors.lightSeeGreen,
                          filled: true,
                          label:  const Text('Admin Id'),
                          labelStyle:  const TextStyle(
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
                      height: 50,
                      child: TextFormField(
                        obscureText: true,
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
                    const SizedBox(height: 40,),
                    SizedBox(
                      width: 250,
                      height: 40,
                      child: ElevatedButton(
                          style: ButtonStyle(backgroundColor: MaterialStateProperty.all(AppColors.darkGrey),
                              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15.0),
                                  )
                              )
                          ),
                          onPressed: () {
                            Get.to(()=>  const AdminHome());
                          },
                          child: MyWidgets.textView("Proceed", AppColors.white, 16)),
                    ),
                    const SizedBox(height: 15,),
                    Padding(
                      padding: const EdgeInsets.only(right: 22),
                      child: MyWidgets.textView('', AppColors.black, 16),
                    ),
                    Container(
                      height: 60,
                      color: Colors.white,
                    ),
                    InkWell(
                      onTap: () {
                        Get.off(()=> const LoginPage());
                      },
                      child: Container(
                        height: 50,
                        width: double.infinity,
                        color: AppColors.themeColorLight,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.arrow_back,color: AppColors.darkGrey,),
                            Text('   Student Login ',style: TextStyle(fontSize: 16,color: AppColors.darkGrey))
                          ],
                        ),
                      ),
                    )
                  ],
                );
              },
            ),
          ],

        ),
      ),
    );
  }
}