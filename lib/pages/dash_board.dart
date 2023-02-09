import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:i_learning/pages/all_receipts.dart';
import 'package:i_learning/pages/ask_doubts.dart';
import 'package:i_learning/pages/assignment.dart';
import 'package:i_learning/pages/exam_routine.dart';
import 'package:i_learning/pages/holiday.dart';
import 'package:i_learning/pages/leave_application.dart';
import 'package:i_learning/pages/pay_online.dart';
import 'package:i_learning/pages/profile_details.dart';
import 'package:i_learning/pages/log_out_page.dart';
import 'package:i_learning/pages/result_category.dart';
import 'package:i_learning/pages/school_events.dart';
import 'package:i_learning/pages/school_gallery.dart';
import '../styles/app_colors.dart';
import '../styles/common_module/my_widgets.dart';


class DashBoard extends StatefulWidget {
  const DashBoard({Key? key}) : super(key: key);

  @override
  State<DashBoard> createState() => _DashBoardState();
}

List<Icon> gridIcons =  [
  Icon(Icons.bookmark, size: 30, color: AppColors.themeColor),                       //Assignment
  Icon(Icons.library_books_sharp, size: 30, color: AppColors.themeColor),            //ExamRoutine
  Icon(Icons.file_copy_outlined, size: 30, color: AppColors.themeColor),             //Result
  Icon(Icons.calendar_month_sharp, size: 30, color: AppColors.themeColor),           //HolidayList
  Icon(Icons.format_align_justify_outlined, size: 30, color: AppColors.themeColor),  //LeaveApplication
  Icon(Icons.calendar_today_outlined, size: 30, color: AppColors.themeColor),        //SchoolEvents
  Icon(Icons.photo, size: 30, color: AppColors.themeColor),                          //SchoolGallery
  Icon(Icons.question_answer_outlined, size: 30, color: AppColors.themeColor),       //AskDoubts
  Icon(Icons.logout, size: 30, color: AppColors.themeColor),                         //LogOut
];

List<Widget> screens1 =
[
  const Assignment(), const ExamRoutine(), ResultCategory(),  const HolidayList(), const LeaveApplication(),
  const SchoolEvents(), const SchoolGallery(), AskDoubts(),  const LogOut(),
];

List<String> gridText = ['Assignment', 'Exam\nRoutine', 'Result', 'School\nHolidays', 'Leave\nApplication',
  'Events', 'School\nGallery', 'Ask\nDoubts ', 'Log Out',];

class _DashBoardState extends State<DashBoard> {
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
                color: AppColors.themeColor),
            Positioned(
              left: 35,
              top: 75,
              right: 35,
              child: InkWell(
                onTap: () {
                  Get.to(()=> const ProfileDetails());
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        MyWidgets.textView('Ishita Samanta', AppColors.white, 20,
                            fontWeight: FontWeight.bold),
                        MyWidgets.textView(
                            'Class  X - B | Roll No - 100ABRS', AppColors.white, 15),
                      ],
                    ),
                    Hero(
                      tag: 'profilePic',
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            border: Border.all(color: Colors.white, width: 3),
                            image: const DecorationImage(image: AssetImage('assets/images/profile_img.jpg')),
                            borderRadius: BorderRadius.circular(28)
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              left: 0,
              top: 135,
              right: 0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 80,
                    width: 160,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        const SizedBox(
                          width: 3,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.white,
                              ),
                              child: const Image(
                                  image: AssetImage(
                                      'assets/images/attendance.png'),
                                  fit: BoxFit.cover),
                            ),
                            MyWidgets.textView('70.00%', Colors.black, 22,
                                fontWeight: FontWeight.bold),
                          ],
                        ),
                        MyWidgets.textView('Attendance', Colors.grey, 15),
                      ],
                    ),
                  ),
                  // const SizedBox(width: 10),
                  Container(
                    height: 80,
                    width: 160,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        const SizedBox(
                          width: 3,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.white,
                              ),
                              child: const Image(
                                  image: AssetImage(
                                      'assets/images/fees.png'),
                                  fit: BoxFit.cover),
                            ),
                            MyWidgets.textView(' ₹ 15,000', Colors.black, 21,
                                fontWeight: FontWeight.bold),
                          ],
                        ),
                        MyWidgets.textView('Fees Due', Colors.grey, 15),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            DraggableScrollableSheet(
              initialChildSize: 0.7,
              builder: (context, state) {
                return ClipRRect(
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15)),
                    child:
                    Container(
                      color: Colors.white,
                      padding: const EdgeInsets.only(top: 10),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Container(
                              height: 40,
                              decoration: BoxDecoration(
                                color: AppColors.themeColorLight,
                                borderRadius: BorderRadius.circular(
                                  15.0,
                                ),
                              ),
                              child: TabBar(
                                // controller: _tabController,
                                indicator: BoxDecoration(
                                  borderRadius: BorderRadius.circular(
                                    15.0,
                                  ),
                                  color: AppColors.themeColor,
                                ),
                                labelColor: Colors.white,
                                unselectedLabelColor: Colors.black,
                                tabs: const [
                                  Tab(text: 'Home'),
                                  Tab(text: 'Payment')
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            /// tab bar view here
                            Expanded(
                              child: TabBarView(
                                // controller: _tabController,
                                children: [
                                  Center(
                                    child: GridView.builder(
                                      gridDelegate:
                                          const SliverGridDelegateWithFixedCrossAxisCount(
                                              crossAxisCount: 3),
                                      itemCount: gridIcons.length,
                                      padding: EdgeInsets.zero,
                                      itemBuilder:
                                          (BuildContext context, int index) {
                                        return InkWell(
                                          onTap: () {
                                            Get.to(screens1[index]);
                                          },
                                          child: Container(
                                            decoration: BoxDecoration(
                                                color:
                                                    AppColors.themeColorLight,
                                                borderRadius:
                                                    BorderRadius.circular(15)),
                                            margin: const EdgeInsets.only(
                                                left: 5, right: 5, bottom: 20),
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              children: [
                                                gridIcons[index],
                                                Text(gridText[index],
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                        color: AppColors.black,
                                                        fontSize: 14)),
                                              ],
                                            ),
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                  Center(
                                      child: Column(
                                       children: [
                                       const SizedBox(
                                        height: 15,
                                      ),
                                       Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 15),
                                              child: Text('Money Receipt :',
                                                  style: TextStyle(
                                                      fontSize: 18,
                                                      color:
                                                          AppColors.themeColor,
                                                      fontWeight:
                                                          FontWeight.bold))),
                                          InkWell(
                                            onTap:  () {
                                              Get.to(()=> const AllReceipts());
                                            },
                                            child: const Padding(
                                              padding: EdgeInsets.only(right: 15),
                                              child: Text('See All',
                                                  style: TextStyle(fontSize: 15)),
                                            ),
                                          ),
                                        ],
                                      ),const SizedBox(height: 15,),
                                       Expanded(
                                          child: ListView.builder(
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
                                                          Text('  Receipt No.',style: TextStyle(color: Colors.grey)),
                                                          Text('58722  ',style: TextStyle(
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
                                                          Text('  Month',style: TextStyle(color: Colors.grey)),
                                                          Text('December  ',style: TextStyle(
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
                                                          Text('  Last date of payment',style: TextStyle(
                                                              color: Colors.grey)),
                                                          Text('15 Dec, 2022  ',style: TextStyle(
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
                                                          Text('  Total pending amount',style: TextStyle(
                                                              color: Colors.grey)),
                                                          Text('₹ 1,600  ',style: TextStyle(
                                                            fontWeight: FontWeight.bold,
                                                            color: Colors.black,
                                                          )),
                                                        ],
                                                      ),
                                                    ),
                                                    InkWell(
                                                      onTap: () {
                                                        Get.to(() => const PayOnline());
                                                      },
                                                      child: Container(
                                                        height: 45,
                                                        decoration: BoxDecoration(
                                                          color: AppColors.themeColor,
                                                          borderRadius: const BorderRadius.only(
                                                              bottomRight: Radius.circular(15),
                                                              bottomLeft: Radius.circular(15)
                                                          ),
                                                        ),
                                                        child: Row(
                                                          mainAxisAlignment : MainAxisAlignment.center,
                                                          children: const [
                                                            Text('Pay Now  ',style: TextStyle(
                                                                color: Colors.white,fontSize: 16)),
                                                            Icon(Icons.arrow_forward,color: Colors.white)
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ]),
                                                );
                                              })
                                      ),
                                    ],
                                  )),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
