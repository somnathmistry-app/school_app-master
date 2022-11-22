import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:school_app/styles/app_colors.dart';

import 'package:get/get.dart';
import '../controllers/home_data_controller.dart';
import '../styles/common_module/my_widgets.dart';



class HomePage extends StatefulWidget {
   const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  HomeDataController homeDataController = Get.put(HomeDataController());

  List<String> imgList =
  [
    'assets/images/banner_a.jpg',
    'assets/images/banner_c.jpg',
    'assets/images/banner_b.jpg',
    'assets/images/banner_d.jpg',
  ];


  List<String> imgUrls =
  [
   'https://www.ptotoday.com/images/articles/body/0319-school-events-you-love-most-curriculum-body.jpg',
   'https://brownschool.wustl.edu/SiteCollectionImages/events-slider-hero1.jpg',
   'https://www.southpoint.edu.in/wp-content/uploads/2018/02/satrangi.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return

      GetX<HomeDataController>(

        initState: (context) {
         homeDataController.getBannerData();
        },

        builder: (controller) {
          if (controller.isLoading.value) {
            return Center(
                child: CircularProgressIndicator(
                  color: AppColors.darkGrey,
                )
            );
          } else {
            print(controller.bannerData1.length);
            return Scaffold(
                appBar: AppBar(backgroundColor: Colors.white,
                    centerTitle: true,
                    elevation: 0,
                    title: Text('School Name',
                      style: TextStyle(color: AppColors.themeColor),)
                ),
                body: ListView(
                  children: [
                    Center(child: Text('School Name',style: TextStyle(color: AppColors.black),)),
                    const SizedBox(height: 15,width: double.infinity,),
                    CarouselSlider.builder(
                      itemCount: controller.bannerData1.length,
                      itemBuilder:
                          (BuildContext context, int itemIndex, int pageViewIndex) =>
                          Container(
                            // height: 180,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Colors.grey,
                                image: DecorationImage(
                                    image: AssetImage(imgList[itemIndex]),
                                    fit: BoxFit.cover)),
                          ),
                      options: CarouselOptions(
                        height: 180,
                        aspectRatio: 16 / 9,
                        viewportFraction: 0.8,
                        initialPage: 0,
                        enableInfiniteScroll: true,
                        reverse: false,
                        autoPlay: true,
                        autoPlayInterval: const Duration(seconds: 4),
                        autoPlayAnimationDuration: const Duration(milliseconds: 900),
                        autoPlayCurve: Curves.fastOutSlowIn,
                        enlargeCenterPage: true,
                        scrollDirection: Axis.horizontal,
                      ),
                    ),
                    const SizedBox(height: 20,),
                    Center(child: Text('About Us',style: TextStyle(color: AppColors.themeColor,fontSize: 19),)),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10.0,horizontal: 20),
                      child: Text(
                        'The Society of Jesus, founded by St. '
                            'Ignatius of Loyola in 1540, gave the '
                            'world the present system of schooling'
                            ' and is active in the field of education '
                            'through its 1865 educational institutions '
                            'in 65 countries, engaging approximately '
                            '98,000 teachers. In South Asia alone the '
                            'Jesuits educate approximately 17,92,000 '
                            'students in 153 High Schools, 378 University '
                            'Colleges and 14 Technical Institutes, in addition '
                            'to other dedicated works and services. This vast '
                            'educational enterprise is only part of the'
                            ' Catholic Church’s larger efforts towards '
                            'service for all people throughout the world.',
                        textAlign: TextAlign.justify,
                        style: TextStyle(color: AppColors.black),),
                    ),
                    Center(child: Text('Recent Activities',style: TextStyle(color: AppColors.themeColor,fontSize: 19))),
                    ListView.builder(
                      itemCount: imgUrls.length,
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      padding: const EdgeInsets.symmetric(horizontal: 3),
                      itemBuilder: (context, index) {
                        return Container(
                          margin: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                              color: AppColors.lightSeeGreen,
                              borderRadius: BorderRadius.circular(15)),
                          child: Column(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: NetworkImage(imgUrls[index]),
                                      fit: BoxFit.cover),
                                  borderRadius: const BorderRadius.only(topRight: Radius.circular(15),topLeft: Radius.circular(15)),
                                  color: Colors.white,
                                ),
                                width: double.infinity,
                                height: 200,
                              ),
                              const SizedBox(height: 8,),
                              const Text(
                                'Annual Show Images',
                                style: TextStyle(fontSize: 14),
                              ),
                              const SizedBox(height: 5,),
                              const Text(
                                '6th Jan, 2022',
                                style: TextStyle(fontSize: 12, color: Colors.grey),
                              ),
                              const SizedBox(height: 8,),
                            ],
                          ),
                        );
                      },
                    ),
                    Center(
                        child: Text(
                          'Faculty',
                          style: TextStyle(color: AppColors.themeColor, fontSize: 19),
                        )),
                    GridView.builder(
                      itemCount: 5,
                      padding: const EdgeInsets.all(5),
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        //childAspectRatio: 0.8,
                          crossAxisCount: 2),
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(vertical: 6),
                          child: Container(
                            width: 170,
                            height: 190,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.white12,
                                image: const DecorationImage(
                                    fit: BoxFit.cover,
                                    image: NetworkImage(
                                        'https://shivnadarschool.edu.in/sites/default/files/team/Manjima.JPG'
                                    )
                                )
                            ),
                            margin: const EdgeInsets.all(8),
                            //  padding: const EdgeInsets.only(top: 130),
                            child: Stack(
                              children: [
                                Positioned(
                                  right:0,
                                  left: 0,
                                  bottom: 0,
                                  child: Container(
                                    // width: double.infinity,
                                    decoration: const BoxDecoration(
                                        borderRadius: BorderRadius.only(bottomRight: Radius.circular(15),
                                            bottomLeft:  Radius.circular(15)),
                                        color: Colors.black54
                                    ),
                                    child: Center(
                                        child: Column(
                                          children: [
                                            const SizedBox(height: 8,),
                                            MyWidgets.textView('Anuradha Chatterjee',
                                                Colors.white,11),
                                            MyWidgets.textView('Physics, Mathematics', Colors.white , 11),
                                            const SizedBox(height: 8,),
                                          ],
                                        )
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ],
                )
            );

          }
        });
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }
}

/*

 */

/*

 */

/*

 */