import 'package:flutter/material.dart';


class LeaveRequest extends StatelessWidget {
  const LeaveRequest({Key? key}) : super(key: key);

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
                const SizedBox(height: 8,),
                Row(
                  mainAxisAlignment:  MainAxisAlignment.spaceEvenly,
                  children: [
                    const SizedBox(width: 20,),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text('Ishita Chakraborty',style: TextStyle(
                              fontSize: 15,
                              color: Colors.white),),
                          Text('Class  X - B',style: TextStyle(
                              fontSize: 15,
                              color: Colors.white),),
                          SizedBox(height: 10,),
                          Text('Fever',style: TextStyle(
                              fontSize: 15,
                              color: Colors.white),),
                          Text( 'Dear Sir, As I am suffering with viral fever I will not be able to '
                              'attend the classes for Today. Please accept this request and kindly grant me leave.',
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

                      },
                      child: const SizedBox(
                        height: 50,
                        width: 55,
                        child: Center(child: Text('Approve',style: TextStyle(color: Colors.green),)),
                      ),
                    ),
                    const SizedBox(width: 10,),
                    InkWell(
                      onTap: () {

                      },
                      child: const SizedBox(
                        height: 50,
                        width: 50,
                        child: Center(child: Text('Reject',style: TextStyle(color: Colors.red),)),
                      ),
                    ),
                    const SizedBox(width: 10,),
                  ],
                )
              ],
            ),
          );
        },),

    );
  }
}
