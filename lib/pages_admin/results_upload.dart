import 'package:flutter/material.dart';

import '../styles/app_colors.dart';



class ResultsUpload extends StatelessWidget {
  const ResultsUpload({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.darkGrey,
      body: ListView.builder(
        itemCount: 3,
        padding: const EdgeInsets.only(top: 15),
        itemBuilder: (context, index) {
          return Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15)),
            margin: const EdgeInsets.all(8),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                          child: Container(
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                                color: AppColors.lightSeeGreen,
                                borderRadius: BorderRadius.circular(8)),
                            child: const Text('Science - Class -X'),)
                      ),
                      Row(
                        children: [
                          InkWell(
                              onTap: () {
                               // Get.to(()=> const EditAssignment());
                              },
                              child:  Icon(Icons.edit,color: AppColors.themeColor)),
                          const SizedBox(width: 20),
                          InkWell(
                              onTap: () {
                              },
                              child: const Icon(Icons.delete,color: Colors.red)),
                          const SizedBox(width: 20,)
                        ],
                      ),
                    ],
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
                    child: const Text(' Structure of atoms',style: TextStyle(
                        color: Colors.black,fontSize: 16)),
                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                    child: Row(
                      mainAxisAlignment : MainAxisAlignment.spaceBetween,
                      children:  [
                        Text('  Assign Date',style: TextStyle(
                            color: Colors.grey[800])),
                        const Text('15 Dec, 2022  ',style: TextStyle(
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
                      children:  [
                        Text('  Last date of submission',
                            style: TextStyle(
                                color: Colors.grey[800])),
                        const Text('16 Jan, 2023  ',style: TextStyle(
                          color: Colors.black,
                        )),
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () {
                     // Get.to(()=> const CheckAssignment());
                    },
                    child: Container(
                      height: 45,
                      decoration: const BoxDecoration(
                          color: Colors.teal,
                          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(15),bottomRight: Radius.circular(15))
                      ),
                      child: const Center(
                        child: Text('Check Uploads',style: TextStyle(
                            color: Colors.white,fontSize: 16)),
                      ),
                    ),
                  ),
                ]),
          );
        },),
    );
  }
}
