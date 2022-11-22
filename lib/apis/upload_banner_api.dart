import 'package:http/http.dart' as http;

import '../models/banner_uploader.dart';


class UploadBannerApi{

  //static var client = http.Client();

  static Future<BannerUploaderModel> uploadBanner(String title, var content,  String headline, String type) async {
    // var baseUrl = GlobalConfiguration().get("base_url");
    var request =  http.MultipartRequest('POST',
        Uri.parse('https://iwebnext.us/schoolproject/server.php/api/upload_banner'));

    request.fields['title'] = title;
    request.files.add(await http.MultipartFile.fromPath('content', content.toString()));
    request.fields['headline'] = headline;
    request.fields['type'] = type;

    var response = await request.send();
    final res = await http.Response.fromStream(response);

    if (response.statusCode == 200) {
      var jsonString = res.body.toString();
      //print('$baseUrl url');
      return bannerUploaderModelFromJson(jsonString);
    }
    return bannerUploaderModelFromJson(res.body);
  }
}

/*
var request = http.MultipartRequest(‘POST’, Uri.parse(urlInsertImage));
request.fields[‘ProductId’] = productId.toString();
request.files.add(http.MultipartFile.fromBytes(‘picture’, File(file!.path).readAsBytesSync(),filename: file!.path));
var res = await request.send();
 */