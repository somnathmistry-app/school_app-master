import 'package:get/get.dart';
import '../apis/home_api.dart';
import '../models/home_data_model.dart';


class HomeDataController extends GetxController{


  var isLoading = false.obs;
  var bannerData1 = <BannerData>[];
  //var blogData = <BannerData>[].obs;

  getBannerData () async {
    try {
      isLoading(true);
      var apiResponse = await HomeApi.getHomeData();

      if (apiResponse != null) {
        if (apiResponse.res == 'ok') {
          bannerData1.assignAll(apiResponse.data!.bannerData!);
        }
      }
    } finally {
      isLoading(false);
    }
  }

}