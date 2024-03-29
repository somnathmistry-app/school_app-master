import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:i_learning/styles/app_colors.dart';


class MyAppBars {
  static AppBar myAppBar(String name,) =>
      AppBar(
          backgroundColor: AppColors.themeColor,
          centerTitle: true,
          elevation: 0,
          leading: InkWell(
              onTap: () {
                Get.back();
              },
              child: const Icon(Icons.arrow_back_ios_new)),
          title: Text(name,
              style:
              const TextStyle(color: Colors.white,
                  fontWeight: FontWeight.w400,
                  fontSize: 16)));

  static AppBar adminAppBar(String name) =>
      AppBar(
        elevation: 0,
        backgroundColor: Colors.black,
        title:  Text(name,
            style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w400,
                fontSize: 16)),
        leading: InkWell(
            onTap: () {
              Get.back();
            },
            child: const Icon(Icons.arrow_back_ios_new)),
        centerTitle: true,
      );
}


// AppBar appBarCart(String name) => AppBar(
//   title: Text(name,
//       style:
//       const TextStyle(color: Colors.white, fontWeight: FontWeight.w400, fontSize: 16)),
//   actions: [
//     //Container(color:Colors.deepPurple,child: Text('data')),
//     Obx(()=>Badge(
//       badgeColor: Colors.deepOrange,
//       position: BadgePosition.topEnd(top: 2, end: 4),
//       badgeContent: Text(CartController.cartItem.value, style: const TextStyle(color: Colors.white, fontSize: 11),),
//       child: IconButton(
//         icon: Icon(Icons.shopping_cart, color: AppColors.white),
//         onPressed: () {
//           Get.to(() => CartView());
//         },
//       ),
//     )),
//     const SizedBox(width: 4,)
//   ],
// );

