// import 'package:flutter/material.dart';
//
// class TabViewWidget extends StatefulWidget {
//   const TabViewWidget({Key? key}) : super(key: key);
//
//   @override
//   State<TabViewWidget> createState() => _TabViewWidgetState();
// }
//
// class _TabViewWidgetState extends State<TabViewWidget> {
//   final scaffoldKey = GlobalKey<ScaffoldState>();
//
//   @override
//   Widget build(BuildContext context) {
//
//     /// Size size = MediaQuery.of(context).size;
//     /// double width = size.width > size.height ? size.height : size.width;
// /*
//      if(width > 600) {
//         // Do something for tablets here
//          } else {
//          // Do something for phones
//         }
// */
//     //print(size);
//     Size screenSize = MediaQuery.of(context).size;
//     Orientation orientation = MediaQuery.of(context).orientation;
//     return Scaffold(
//       key: scaffoldKey,
//     //  backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
//       appBar: AppBar(
//     //    backgroundColor: FlutterFlowTheme.of(context).primaryColor,
//         automaticallyImplyLeading: false,
//         title: const Text(
//           'Page Title',
//           style: TextStyle(
//             fontFamily: 'Poppins',
//             color: Colors.white,
//             fontSize: 22,
//           ),
//         ),
//         actions: const [],
//         centerTitle: false,
//         elevation: 2,
//       ),
//
//       body: SafeArea(
//         child: GestureDetector(
//           onTap: () => FocusScope.of(context).unfocus(),
//           child: Column(
//             mainAxisSize: MainAxisSize.max,
//             children: [
//               Expanded(
//                 child: DefaultTabController(
//                   length: 4,
//                   initialIndex: 0,
//                   child: Column(
//                     children:  [
//                       const TabBar(
//                         isScrollable: true,
//                         labelColor: Colors.indigo,
//                         // labelStyle: FlutterFlowTheme.of(context).bodyText1,
//                         indicatorColor: Color(0xFF393DD2),
//                         tabs: [
//                           Tab(
//                             text: '',
//                           ),
//                           Tab(
//                             text: '',
//                           ),
//                           Tab(
//                             text: '',
//                           ),
//                           Tab(
//                             text: '',
//                           ),
//                         ],
//                       ),
//                       Expanded(
//                         child: TabBarView(
//                           children: [
//                             const Text(
//                               'Tab View 1',
//                               style: TextStyle(
//                                 fontFamily: 'Poppins',
//                                 fontSize: 32,
//                               ),
//                             ),
//                             Text(
//                               'View\n\n[MediaQuery width]: ${screenSize.width.toStringAsFixed(2)}\n\n'
//                                   '[MediaQuery orientation]: $orientation',
//                               style: const TextStyle(
//                                 fontFamily: 'Poppins',
//                                 fontSize: 32,
//                               ),
//                             ),
//                             const Text(
//                               'Tab View 3',
//                               style: TextStyle(
//                                 fontFamily: 'Poppins',
//                                 fontSize: 32,
//                               ),
//                             ),
//                             const Text(
//                               'Tab View 4',
//                               style: TextStyle(
//                                 fontFamily: 'Poppins',
//                                 fontSize: 32,
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
