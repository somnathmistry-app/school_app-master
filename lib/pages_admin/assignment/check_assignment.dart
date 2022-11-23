
import 'package:flutter/material.dart';
import 'package:school_app/styles/common_module/admin_appbar.dart';


class CheckAssignment extends StatelessWidget {
  const CheckAssignment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AdminAppBar.myAppBar(''),
      body: const Center(child: Text('No Submissions Yet . . .')),
    );
  }
}