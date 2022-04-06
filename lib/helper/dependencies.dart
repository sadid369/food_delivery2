import 'package:food_delivery2/controllers/popular_product_controller.dart';
import 'package:food_delivery2/controllers/recommended_product_controller.dart';
import 'package:food_delivery2/data/api/api_client.dart';
import 'package:food_delivery2/data/repository/popular_product_repo.dart';
import 'package:food_delivery2/data/repository/recommended_product_repo.dart';
import 'package:food_delivery2/utils/app_constants.dart';
import 'package:get/get.dart';

Future<void> init() async {
  // api Client
  Get.lazyPut(() => ApiClient(appBaseUrl: AppConstants.BASE_URL));
  // repos
  Get.lazyPut(() => PopularProductRepo(apiClient: Get.find()));
  Get.lazyPut(() => RecommendedProductRepo(apiClient: Get.find()));
  //controller
  Get.lazyPut(() => PopularProductController(popularProductRepo: Get.find()));
  Get.lazyPut(
      () => RecommendedProductController(recommendedroductRepo: Get.find()));
}
