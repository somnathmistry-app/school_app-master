import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:school_app/pages_admin/dashboard_pages/full_details.dart';
import '../../styles/app_colors.dart';
import '../../styles/common_module/admin_appbar.dart';

class StudentDetails extends StatelessWidget {
  const StudentDetails({Key? key}) : super(key: key);

  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.darkGrey,
      appBar: AdminAppBar.myAppBar('All Students'),
      body: ListView.builder(
          itemCount: 3,
          padding: const EdgeInsets.only(top: 0,bottom: 30),
          itemBuilder: (context, index) {
            return Container(
              decoration: BoxDecoration(
                  color: AppColors.themeColorLight,
                  borderRadius: BorderRadius.circular(15)),
              margin: const EdgeInsets.all(8),
              child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(8),
                      decoration: const BoxDecoration(
                          border: Border(
                              bottom:
                              BorderSide(
                                  color: Colors.grey,
                                  width: 0.2)
                          )
                      ),
                      child: Row(
                        mainAxisAlignment : MainAxisAlignment.spaceBetween,
                        children: const [
                          Text('  Name',style: TextStyle(color: Colors.grey)),
                          Text('Pratima Chakraborty  ',style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          )),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),
                      decoration: const BoxDecoration(
                          border: Border(
                              bottom:
                              BorderSide(
                                  color: Colors.grey,
                                  width: 0.2)
                          )
                      ),
                      child: Row(
                        mainAxisAlignment : MainAxisAlignment.spaceBetween,
                        children: const [
                          Text('  Roll No.',style: TextStyle(
                              color: Colors.grey)),
                          Text('10-ABSE  ',style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          )),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),
                      decoration: const BoxDecoration(
                          border: Border(
                              bottom:
                              BorderSide(
                                  color: Colors.grey,
                                  width: 0.2)
                          )
                      ),
                      child: Row(
                        mainAxisAlignment : MainAxisAlignment.spaceBetween,
                        children: const [
                          Text('  Admission No.',style: TextStyle(color: Colors.grey)),
                          Text('789546-SCHL  ',style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          )),
                        ],
                      ),
                    ),
                    InkWell  (
                      onTap: () {
                       Get.to(() => const FullDetails());
                      },
                      child: Container(
                        height: 46,
                        decoration: const BoxDecoration(
                          color: Colors.teal,
                          borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(15),
                              bottomLeft: Radius.circular(15)
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment : MainAxisAlignment.center,
                          children: const [
                            Text('See All Details',style: TextStyle(
                                color: Colors.white,fontSize: 16)),
                        //    Icon(Icons.arrow_forward,color: Colors.white)
                          ],
                        ),
                      ),
                    ),
                  ]),
            );
         })
    );
  }
}
