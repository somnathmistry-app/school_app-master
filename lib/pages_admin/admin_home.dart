import 'package:flutter/material.dart';
import 'package:school_app/pages_admin/assignment/upload_assignment.dart';
import 'package:school_app/pages_admin/blogs/all_blogs.dart';
import 'package:school_app/pages_admin/dashboard_pages/dashboard_admin.dart';
import 'package:school_app/pages_admin/gallery_image/gallery_images.dart';
import 'package:school_app/pages_admin/holidays_events.dart';
import 'package:school_app/pages_admin/leaves/leave_request.dart';
import 'package:school_app/pages_admin/results_upload.dart';
import 'package:school_app/pages_admin/query/student_query.dart';

import '../styles/app_colors.dart';


class AdminHome extends StatefulWidget {
  const AdminHome({Key? key}) : super(key: key);

  @override
  State<AdminHome> createState() => _AdminHomeState();
}

class _AdminHomeState extends State<AdminHome> {


  List<Widget> screens = [
    DashBoardAdmin(),
    const AllBlogs(),
    GalleryImages(),
    const UploadAssignment(),
    //const ExamRoutineUpload(),
    const ResultsUpload(),
    const LeaveRequest(),
    const StudentQueries(),
    const HolidaysEvents(),
   // const Settings(),
  ];

  List<String> titles = [
     'Admin DashBoard',
     'All Blogs',
     'Gallery Images',
     'Assignment Manage',
     'Results',
     'Leave Request',
     'Student Queries',
     'Holidays & Events',
  ];

  Widget? body;
  String? appBarText;

  @override
  void initState() {
    super.initState();
    body = DashBoardAdmin();
    appBarText = 'Admin Dashboard';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.black,
        title:  Text( appBarText!,
            style: const TextStyle(
                color: Colors.white,
            fontWeight: FontWeight.w400,
            fontSize: 16)),
        centerTitle: true,
      ),
      drawer: Drawer(
        backgroundColor: AppColors.black,
        child: ListView(
          children: [
             DrawerHeader(
              child: Container(
                width: double.infinity,
                color: Colors.teal,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: Row(
                   crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const SizedBox(width: 10),
                      Container(height: 50, width: 50,
                        decoration: BoxDecoration(
                          image: const DecorationImage(
                              image: AssetImage('assets/images/admin_profile.jpg'),
                              fit: BoxFit.cover),
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(25)),
                      ),
                      const SizedBox(width: 15),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text('Anuradha Chatterjee'),
                          Text('anuradha@gmail.com'),
                          SizedBox(height: 8),
                        ],
                      ),
                      const SizedBox(height: 15,),
                    ],
                  ),
                ),
              )
            ),
            ListView.builder(
              itemCount: screens.length,
              shrinkWrap: true,
              itemBuilder: (context, index) {
              return DrawerListTile(
                title: titles[index],
                icon:  Icons.access_time,
                press: () {
                  Navigator.pop(context);
                  setState((){
                    body = screens[index];
                    appBarText = titles[index];
                  });
                },
              );
             },
            ),
          ],
        ),
      ),
      body: body,
    );
  }
}

class DrawerListTile extends StatelessWidget {
  const DrawerListTile({
    Key? key,
    required this.title,
    required this.icon,
    required this.press,
  }) : super(key: key);

  final String title;
  final IconData icon;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: press,
      horizontalTitleGap: 0.0,
      leading: Icon(
        icon,
        color: Colors.white54,
      ),
      title: Text(
        title,
        style: const TextStyle(color: Colors.white54),
      ),
    );
  }
}
