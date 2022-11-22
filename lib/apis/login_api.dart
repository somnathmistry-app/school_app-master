import 'package:http/http.dart' as http;

import '../models/login_model.dart';



class LogInApi{

  static var client = http.Client();

  static Future<LoginModel> getLogin(String email, String password) async {
   // var baseUrl = GlobalConfiguration().get("base_url");
    var response = await client.post(Uri.parse('https://iwebnext.us/schoolproject/server.php/api/login'),
        body: {'email': email, 'password': password});

    if (response.statusCode == 200) {
      var jsonString = response.body;
      //print('$baseUrl url');
      return loginModelFromJson(jsonString);
    }
    return loginModelFromJson(response.body);
  }

  // static Future<UserModel> getSignUp(String name, String email, String password) async {
  //   var baseUrl = GlobalConfiguration().get('base_url');
  //
  //
  //   var response = await client.post(Uri.parse('${baseUrl}register'), body: {'name': name, 'email':email,'password':password});
  //
  //   if (response.statusCode == 200) {
  //     var jsonString = response.body;
  //     return userModelFromJson(jsonString);
  //   }
  //   return userModelFromJson(response.body);
  // }
}
