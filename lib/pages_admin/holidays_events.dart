import 'package:flutter/material.dart';



class HolidaysEvents extends StatelessWidget {
  const HolidaysEvents({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> imgUrls = [
      'https://www.ptotoday.com/images/articles/body/0319-school-events-you-love-most-curriculum-body.jpg',
      'https://brownschool.wustl.edu/SiteCollectionImages/events-slider-hero1.jpg',
      'https://www.southpoint.edu.in/wp-content/uploads/2018/02/satrangi.jpg',
    ];
    return Scaffold(
      backgroundColor: Colors.black87,
      body: ListView.builder(
        itemCount: imgUrls.length,
        padding: const EdgeInsets.only(bottom: 30),
        itemBuilder: (context, index) {
          return Container(
            height: 100,
            decoration: const  BoxDecoration(
                border: Border(
                    bottom: BorderSide(
                        color: Colors.grey))),
            child: Row(
              mainAxisAlignment:  MainAxisAlignment.spaceEvenly,
              children: [
                const SizedBox(width: 20,),
                Container(
                  width: 80,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(imgUrls[index]))),
                ),const SizedBox(width: 20,),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:  [
                      const Text('Annual Show Images',style: TextStyle(
                          fontSize: 15,
                          color: Colors.white),),
                      const SizedBox(height: 10,),
                      Row(
                        children: const [
                          Icon(Icons.access_time,size: 18,color: Colors.white),
                          Text( '   12 Jan, 2021',
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                                fontSize: 12,
                                color: Colors.white70),),
                        ],
                      ),
                    ],
                  ),
                ), const SizedBox(width: 20,),
                InkWell(
                  onTap: () {

                  },
                  child: const SizedBox(
                    height: 50,
                    width: 50,
                    child: Center(child: Text('View',style: TextStyle(color: Colors.green),)),
                  ),
                ),
                InkWell(
                  onTap: () {

                  },
                  child: const SizedBox(
                    height: 50,
                    width: 50,
                    child: Center(child: Text('Delete',style: TextStyle(color: Colors.red),)),
                  ),
                ), const SizedBox(width: 5,),
              ],
            ),
          );
        },),
    );
  }
}
