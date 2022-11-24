import 'package:flutter/material.dart';
import '../../styles/app_colors.dart';
import '../../styles/common_module/app_bar.dart';
import '../../styles/common_module/my_widgets.dart';


class EditAssignment extends StatelessWidget {
  const EditAssignment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.darkGrey,
      appBar: MyAppBars.adminAppBar(''),
      body: ListView(
        children: [
          const SizedBox(height: 15),
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                 Text('Assign Date :',style: TextStyle(color: Colors.white70,fontSize: 16)),
                Text('16-05-2023',style: TextStyle(color: Colors.white70,fontSize: 16)),
              ]
          ),
          const SizedBox(height: 5),
          Container(
            width: double.infinity,
            margin: const EdgeInsets.symmetric(horizontal: 22),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: AppColors.darkGrey,),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 10,),
                const Text('  Class',style: TextStyle(color: Colors.white70,fontSize: 14)),
                const SizedBox(height: 10,),
                TextFormField(
                    initialValue: 'X - B',
                    textInputAction: TextInputAction.next,
                    style: TextStyle(fontSize: 15, color: AppColors.black),
                    decoration: InputDecoration(
                      fillColor: AppColors.themeColorLight,
                      filled: true,
                      hintText: 'Enter Topic...',
                      contentPadding: const EdgeInsets.symmetric(
                          horizontal: 16.0, vertical: 16.0),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide(
                            color: AppColors.black,
                          )
                      ),
                    )
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            margin: const EdgeInsets.symmetric(horizontal: 22),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: AppColors.darkGrey,),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('  Subject',style: TextStyle(color: Colors.white70,fontSize: 14)),
                const SizedBox(height: 10,),
                TextFormField(
                  initialValue: 'Science',
                    textInputAction: TextInputAction.next,
                    style: TextStyle(fontSize: 15, color: AppColors.black),
                    decoration: InputDecoration(
                      fillColor: AppColors.themeColorLight,
                      filled: true,
                      hintText: 'Enter Subject...',
                      contentPadding: const EdgeInsets.symmetric(
                          horizontal: 16.0, vertical: 16.0),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide(
                            color: AppColors.black,
                          )
                      ),
                    )
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            margin: const EdgeInsets.symmetric(horizontal: 22),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: AppColors.darkGrey,),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 10,),
                const Text('  Topic',style: TextStyle(color: Colors.white70,fontSize: 14)),
                const SizedBox(height: 10,),
                TextFormField(
                    initialValue: 'Structure of atoms',
                    textInputAction: TextInputAction.next,
                    style: TextStyle(fontSize: 15, color: AppColors.black),
                    decoration: InputDecoration(
                      fillColor: AppColors.themeColorLight,
                      filled: true,
                      hintText: 'Enter Topic...',
                      contentPadding: const EdgeInsets.symmetric(
                          horizontal: 16.0,
                          vertical: 16.0),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide(
                            color: AppColors.black,
                          )
                      ),
                    )
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            margin: const EdgeInsets.symmetric(horizontal: 22),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: AppColors.darkGrey,),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 10,),
                const Text('  Last Date of Submission',style: TextStyle(color: Colors.white70,fontSize: 14)),
                const SizedBox(height: 10,),
                TextFormField(
                    initialValue: '16 Jan, 2023',
                    textInputAction: TextInputAction.next,
                    style: TextStyle(fontSize: 15, color: AppColors.black),
                    decoration: InputDecoration(
                      fillColor: AppColors.themeColorLight,
                      filled: true,
                      hintText: 'Define last date....',
                      contentPadding: const EdgeInsets.symmetric(
                          horizontal: 16.0, vertical: 16.0),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide(
                            color: AppColors.black,
                          )
                      ),
                    )
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            margin: const EdgeInsets.symmetric(horizontal: 22),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: AppColors.darkGrey,),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 10,),
                const Text('  Description',style: TextStyle(color: Colors.white70,fontSize: 14)),
                const SizedBox(height: 10,),
                TextFormField(
                  initialValue:
                      '1. Which subatomic particle is absent in an ordinary hydrogen atom?'
                      '  \n2.Is it possible for the atom of an element to have one electron, one proton'
                      ' and no neutron? '
                      ' \n3. Electron attributes negative charge, protons attribute positive charge.'
                      ' An atom has both but why there is no charge?',
                  textInputAction: TextInputAction.newline,
                  keyboardType: TextInputType.multiline,
                  minLines: 6,
                  maxLines: null,
                  decoration:  InputDecoration(
                    fillColor: AppColors.themeColorLight,
                    filled: true,
                    hintText: 'Write Questions here...',
                    border: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        borderSide: BorderSide(
                          color: Colors.grey,
                        )
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Container(
            width: 250,
            height: 43,
            margin: const EdgeInsets.symmetric(horizontal: 55),
            child: ElevatedButton(
                style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.teal),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        )
                    )
                ),
                onPressed: () {
                  // Get.to(()=>  const AdminHome());
                },
                child: MyWidgets.textView("Save Changes", AppColors.white, 16)),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
