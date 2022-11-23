import 'package:http/http.dart' as http;

import '../models/blog_upload_model.dart';


class UploadBlogApi{

  //static var client = http.Client();

  static Future<BlogUploadModel> uploadBlog(String title, var content,  String headline, String type) async {
    // var baseUrl = GlobalConfiguration().get("base_url");
    var request =  http.MultipartRequest('POST',
        Uri.parse('https://iwebnext.us/schoolproject/server.php/api/upload_blog'));

    request.fields['title'] = title;
    request.files.add(await http.MultipartFile.fromPath('content', content.toString()));
    request.fields['headline'] = headline;
    request.fields['type'] = type;

    var response = await request.send();
    final res = await http.Response.fromStream(response);

    if (response.statusCode == 200) {
      var jsonString = res.body.toString();
      //print('$baseUrl url');
      return blogUploadModelFromJson(jsonString);
    }
    return blogUploadModelFromJson(res.body);
  }
}
