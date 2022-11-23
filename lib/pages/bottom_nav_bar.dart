// import 'package:flutter/material.dart';
// import 'package:get_storage/get_storage.dart';
// import 'package:school_app/pages/ask_login.dart';
// import 'package:school_app/pages/dash_board.dart';
// import 'package:school_app/pages/home_page.dart';
// import 'package:school_app/pages/contact_us.dart';
// import '../styles/app_colors.dart';
//
//
// class BottomNavPage extends StatefulWidget {
//   const BottomNavPage({Key? key}) : super(key: key);
//
//   @override
//   State<BottomNavPage> createState() => _BottomNavPageState();
// }
//   var box = GetStorage();
//
//
// class _BottomNavPageState extends State<BottomNavPage> {
//
//   final List<Widget> _screens =
//   [
//     const HomePage(),
//     (box.read('isLogin')) == null || (box.read('isLogin')) == false ? const AskLogin(): const DashBoard(),
//     const ContactUs(),
//   ];
//
//   int initValue = (box.read('isLogin')) == null || (box.read('isLogin')) == false ? 0 :1;
//
//   @override
//   Widget build(BuildContext context) {
//
//   // print((box.read('isLogin')));
//     return Scaffold(
//       body: IndexedStack(
//         index: initValue,
//         children: _screens,
//       ),
//       bottomNavigationBar: NavigationBarTheme(
//         data: NavigationBarThemeData(
//             indicatorColor: Colors.grey[100],
//             labelTextStyle:  MaterialStateProperty.all(TextStyle(color: AppColors.themeColor))
//         ),
//         child: NavigationBar(
//           elevation: 5,
//           labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
//           onDestinationSelected: (value) {
//             setState(() {
//               initValue = value;
//             });
//           },
//           selectedIndex: initValue,
//           height: 70,
//           backgroundColor: Colors.grey[300],
//           animationDuration: const Duration(seconds: 2),
//           destinations:  [
//             NavigationDestination(
//                 icon: const Icon(Icons.home_outlined,size: 28,
//                 ),
//                 selectedIcon: Icon(Icons.home,
//                   size: 32,
//                   color: AppColors.themeColor,),
//                 label: 'Home'),
//             NavigationDestination(
//                 icon: const Icon(Icons.dashboard_customize_outlined),
//                 selectedIcon: Icon(Icons.dashboard_customize,
//                   size: 32,
//                   color: AppColors.themeColor,),
//                 label: 'DashBoard'),
//             NavigationDestination(
//                 icon: const Icon(Icons.call_outlined,),
//                 selectedIcon: Icon(
//                   Icons.call,
//                   size: 32,
//                   color: AppColors.themeColor,),
//                 label: 'Contact Us'),
//           ],
//         ),
//       ),
//     );
//   }
//
//   @override
//   void dispose() {
//     super.dispose();
//
//   }
// }
//
