import 'package:flutter/material.dart';

import '../styles/common_module/app_bar.dart';

class SchoolGallery extends StatelessWidget {
  const SchoolGallery({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    List<String> imgUrls = [
      'https://i.imgur.com/CzXTtJV.jpg',
      'https://i.imgur.com/OB0y6MR.jpg',
      'https://farm2.staticflickr.com/1533/26541536141_41abe98db3_z_d.jpg',
      'https://farm4.staticflickr.com/3075/3168662394_7d7103de7d_z_d.jpg',
      'https://farm9.staticflickr.com/8505/8441256181_4e98d8bff5_z_d.jpg',
      'https://i.imgur.com/CzXTtJV.jpg',
      'https://i.imgur.com/OB0y6MR.jpg',
      'https://farm2.staticflickr.com/1533/26541536141_41abe98db3_z_d.jpg',
      'https://farm4.staticflickr.com/3075/3168662394_7d7103de7d_z_d.jpg',
      'https://farm9.staticflickr.com/8505/8441256181_4e98d8bff5_z_d.jpg',
    ];
    return SafeArea(
      child: Scaffold(
        appBar: MyAppBar.myAppBar('Gallery'),
        body: GridView.builder(
          itemCount: imgUrls.length,
          padding: const EdgeInsets.all(5),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.symmetric(horizontal: 5,vertical: 3),
            decoration: BoxDecoration(
              color: Colors.white,
                // image: DecorationImage(),
                borderRadius: BorderRadius.circular(15)),
            child: Column(
              children: [
                ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image(image: NetworkImage(imgUrls[index]),fit: BoxFit.cover)),
                const SizedBox(height: 15,),
                Column(
                  children: const [
                     Text('Annual Show Images',style: TextStyle(fontSize: 16),),
                     Text('12 Jan, 2021',style: TextStyle(fontSize: 13, color: Colors.grey),),
                  ],
                ),
              ],
            ),
          );
         },
        ),
      ),
    );
  }
}
