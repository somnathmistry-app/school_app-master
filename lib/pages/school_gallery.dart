import 'package:flutter/material.dart';

import '../styles/common_module/app_bar.dart';


class SchoolGallery extends StatelessWidget {
  const SchoolGallery({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    List<String> imgUrls = [
      'https://brownschool.wustl.edu/SiteCollectionImages/events-slider-hero1.jpg',
      'https://www.ptotoday.com/images/articles/body/0319-school-events-you-love-most-curriculum-body.jpg',
      'https://www.southpoint.edu.in/wp-content/uploads/2018/02/satrangi.jpg',
      'https://brownschool.wustl.edu/SiteCollectionImages/events-slider-hero1.jpg',
      'https://www.ptotoday.com/images/articles/body/0319-school-events-you-love-most-curriculum-body.jpg',
      'https://www.southpoint.edu.in/wp-content/uploads/2018/02/satrangi.jpg',
    ];
    return Scaffold(
      appBar: MyAppBars.myAppBar('Gallery'),
      body: GridView.builder(
        itemCount: imgUrls.length,
        padding: const EdgeInsets.all(8),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2),
        itemBuilder: (context, index) {
        return Container(
          margin: const EdgeInsets.symmetric(horizontal: 5),
          decoration: BoxDecoration(
            color: Colors.white,
              // image: DecorationImage(),
              borderRadius: BorderRadius.circular(15)),
          child: Column(
            children: [
              Container(
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        image: NetworkImage(imgUrls[index]),
                        fit: BoxFit.cover)),
              ),
              // ClipRRect(
              //     borderRadius: BorderRadius.circular(15),
              //     child: Image(image: NetworkImage(imgUrls[index]),fit: BoxFit.cover)),
              const SizedBox(height: 15,),
              const Text('Annual Show Images',style: TextStyle(fontSize: 14),),
              const Text('12 Jan, 2021',style: TextStyle(fontSize: 12, color: Colors.grey),),
            ],
          ),
        );
       },
      ),
    );
  }
}
