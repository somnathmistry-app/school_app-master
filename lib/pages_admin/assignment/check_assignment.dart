
import 'package:flutter/material.dart';

import '../../styles/common_module/app_bar.dart';


class CheckAssignment extends StatelessWidget {
  const CheckAssignment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBars.adminAppBar(''),
      body: const Center(child: Text('No Submissions Yet . . .')),
    );
  }
}
