import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:school_app/pages/home_page.dart';
import 'package:school_app/styles/common_module/my_snack_bar.dart';



class LogOut extends StatefulWidget {
  const LogOut({Key? key}) : super(key: key);

  @override
  State<LogOut> createState() => _LogOutState();
}

class _LogOutState extends State<LogOut> {
  var box = GetStorage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('Are you sure you want to LogOut?'),
          const SizedBox(height: 25),
          Row(
            mainAxisAlignment:   MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                 MySnackbar.infoSnackBar('Logout complete!!', 'You are no longer logged in');
                 // LoginController.isLoading(false);
                  box.write('isLogin', null);
                  Get.offAll(() => const HomePage());
               //   print(box.read('isLogin'));
                },
                child: const Text('LogOut'),
              ),
              const SizedBox(width: 25,),
              ElevatedButton(
                style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.grey)),
                onPressed: () { Get.back(); },
                child: const Text('Cancel'),

              ),
            ],
          )
        ],
      ),
    );
  }
}
