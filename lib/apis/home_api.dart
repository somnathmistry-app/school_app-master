import 'package:http/http.dart' as http;

import '../models/home_data_model.dart';


class HomeApi{

  static var client = http.Client();

  static Future<HomeDataModel> getHomeData() async {
    // var baseUrl = GlobalConfiguration().get("base_url");
    var response = await client.post(Uri.parse('https://iwebnext.us/schoolproject/server.php/api/get_home_data'),
        body: {}
    );

    if (response.statusCode == 200) {
      var jsonString = response.body;
      return homeDataModelFromJson(jsonString);
    }
    return homeDataModelFromJson(response.body);
  }

}
