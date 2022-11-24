import 'package:flutter/material.dart';

import '../../styles/common_module/app_bar.dart';



class FullDetails extends StatelessWidget {
  const FullDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBars.adminAppBar(''),
      body: const Center(child:  Text('Under Construction . . .')),
    );
  }
}
