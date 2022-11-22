import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../styles/app_colors.dart';

class EventDetails extends StatelessWidget {
  const EventDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.black38,
        leading: InkWell(
            onTap: () {
              Get.back();
            },
            child: const Icon(Icons.arrow_back_ios_new)
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            height: 350,
            decoration: const BoxDecoration(
              image:  DecorationImage(
                  image: AssetImage('assets/images/event_img.jpg'), fit: BoxFit.cover),
              color: Colors.grey,
            ),
          ), const SizedBox(height: 15,),
          Row(
            children: [
              const SizedBox(width: 15,),
              Icon(Icons.access_time,size: 22,color: AppColors.themeColor),
              const SizedBox(width: 15,),
              Text(' 06 Jan 21, 09:00  AM', style: TextStyle(color: AppColors.themeColor),)
            ],
          ),
          const SizedBox(height: 15,),
          const Text('    Fishing Tournament',style: TextStyle(fontSize: 16)),
          const SizedBox(height: 10,),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 14.0),
            child: Text(
                'April is also National Poetry Month.'
                ' Now there is a great theme for a fun '
                'family night! Combine poetry readings by '
                'students and adults. Invite guest readers'
                ' and poets. Sell a book of student poems '
                'as a fund-raiser. Display portfolios of '
                'students\' best poetry. Present your oldest'
                ' students in a poetry slam competition, like'
                ' teacher Brenda Dyck staged with her students '
                '(see the Education World article, A Poetry Slam '
                'Cures Midwinter Blahs). For more ideas for great'
                ' poetry writing activities, don\'t miss Education'
                ' World\'s special Poetry Month archive.',
              textAlign: TextAlign.justify,
            ),
          ),
        ],
      ),
    );
  }
}
