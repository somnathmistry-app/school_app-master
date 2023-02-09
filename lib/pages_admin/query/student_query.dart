import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:i_learning/pages_admin/query/answer.dart';



class StudentQueries extends StatelessWidget {
  const StudentQueries({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      body: ListView.builder(
        itemCount: 5,
        padding: const EdgeInsets.only(bottom: 30),
        itemBuilder: (context, index) {
          return Container(
            // height: 100,
            decoration: const  BoxDecoration(
                border: Border(
                    bottom: BorderSide(
                        color: Colors.grey))),
            child: Column(
              children: [
                const SizedBox(height: 8),
                Row(
                  mainAxisAlignment:  MainAxisAlignment.spaceEvenly,
                  children: [
                    const SizedBox(width: 20,),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text('Ishita Chakraborty',
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.white),),
                          Text('Class  X - B',style: TextStyle(
                              fontSize: 15,
                              color: Colors.white),),
                          SizedBox(height: 10,),
                          Text('Physics',style: TextStyle(
                              fontSize: 15,
                              color: Colors.white),),
                          Text('1. Electron attributes negative charge, protons attribute '
                              'positive charge. An atom has both but why there is no charge?',
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                                fontSize: 13,
                                color: Colors.white70),),
                        ],
                      ),
                    ),
                    const SizedBox(width: 20,),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    InkWell(
                      onTap: () {
                        Get.to(()=> const AnswerQuery());
                      },
                      child: const SizedBox(
                        height: 50,
                        width: 55,
                        child: Center(child: Text('Answer',style: TextStyle(color: Colors.green),)),
                      ),
                    ),
                    const SizedBox(width: 20,),
                  ],
                )
              ],
            ),
          );
        },),
    );
  }
}
