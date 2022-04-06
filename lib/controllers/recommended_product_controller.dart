import 'package:food_delivery2/data/repository/recommended_product_repo.dart';
import 'package:food_delivery2/models/products_model.dart';
import 'package:get/get.dart';

import 'package:food_delivery2/data/repository/popular_product_repo.dart';
import 'dart:developer';

class RecommendedProductController extends GetxController {
  final RecommendedProductRepo recommendedroductRepo;
  RecommendedProductController({
    required this.recommendedroductRepo,
  });
  List<dynamic> _recommendedProductList = [];
  List<dynamic> get recommendedProductList => _recommendedProductList;
  bool _isLoaded = false;
  bool get isLoaded => _isLoaded;
  Future<void> getRecommendedProductList() async {
    Response response = await recommendedroductRepo.getRecommendedProductList();
    if (response.statusCode == 200) {
      log("class RecommendedProductController / Future<void> getRecommendedProductList() ");
      _recommendedProductList = [];
      _recommendedProductList.addAll(Product.fromJson(response.body).products);
      log("class RecommendedProductController / Future<void> getRecommendedProductList()" +
          _recommendedProductList.toString());
      _isLoaded = true;
      update();
    } else {}
  }
}
