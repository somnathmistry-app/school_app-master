import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:i_learning/pages/log_in.dart';


class AskLogin extends StatelessWidget {
  const AskLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(width: double.infinity,),
          const SizedBox(height: 40,),
          const Text('You need to LogIn for this section..'),
          const SizedBox(height: 25,),
          ElevatedButton(
            onPressed: () {
              Get.to(()=> LoginPage());
            },
            child: const Text('LogIn'),
          )
        ],
      ),
    );
  }
}
