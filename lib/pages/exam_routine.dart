import 'package:flutter/material.dart';
import 'package:school_app/styles/app_colors.dart';
import 'package:school_app/styles/common_module/my_widgets.dart';
import '../styles/common_module/app_bar.dart';


class ExamRoutine extends StatelessWidget {
  const ExamRoutine({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> subjects = [ 'Bengali','English','Science', 'Mathematics','Geography', 'History'];
    return Scaffold(
      appBar: MyAppBar.myAppBar('Time Table'),
      body: Column(
        children: [
          const SizedBox(height: 15,),
          MyWidgets.textView('Upcoming Exam Routines', Colors.black, 18),
          const SizedBox(height: 20,),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 15,),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
              color: AppColors.themeColorLight,
            ),
            child: ListView.builder(
              itemCount: subjects.length,
              padding: EdgeInsets.zero,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
              return Container(
                padding: const EdgeInsets.symmetric(vertical: 15),
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                  color: AppColors.themeColorLight,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        MyWidgets.textView('11', Colors.black, 15),
                        MyWidgets.textView('JAN', Colors.black, 14),
                      ],
                    ),
                    const SizedBox(width: 15,),
                    MyWidgets.textView(subjects[index], Colors.black, 17),
                    const SizedBox(width: 18,),
                    MyWidgets.textView('Monday', Colors.grey, 15),
                    Row(
                      children: [
                        const Icon(Icons.access_time,color: Colors.grey, size: 15),
                        MyWidgets.textView(' 12:00 PM', Colors.grey, 15),
                      ],
                    ),
                  ],
                ),
              );
            },),
          )
        ],
      ),
    );
  }
}
