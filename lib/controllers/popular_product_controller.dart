import 'package:food_delivery2/models/products_model.dart';
import 'package:get/get.dart';

import 'package:food_delivery2/data/repository/popular_product_repo.dart';
import 'dart:developer';

class PopularProductController extends GetxController {
  final PopularProductRepo popularProductRepo;
  PopularProductController({
    required this.popularProductRepo,
  });
  List<dynamic> _popularProductList = [];
  List<dynamic> get popularProductList => _popularProductList;

  Future<void> getPopularProductList() async {
    Response response = await popularProductRepo.getPopularProductList();
    if (response.statusCode == 200) {
      log("class PopularProductController / Future<void> getPopularProductList() ");
      _popularProductList = [];
      _popularProductList.addAll(Product.fromJson(response.body).products);
      log("class PopularProductController / Future<void> getPopularProductList() " +
          _popularProductList.toString());
      update();
    } else {}
  }
}
