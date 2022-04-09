import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery2/models/products_model.dart';
import 'package:food_delivery2/utils/colors.dart';
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
  bool _isLoaded = false;
  int _quantity = 0;
  int get quantity => _quantity;
  bool get isLoaded => _isLoaded;
  Future<void> getPopularProductList() async {
    Response response = await popularProductRepo.getPopularProductList();
    if (response.statusCode == 200) {
      log("class PopularProductController / Future<void> getPopularProductList() ");
      _popularProductList = [];
      _popularProductList.addAll(Product.fromJson(response.body).products);
      log("class PopularProductController / Future<void> getPopularProductList() " +
          _popularProductList.toString());
      _isLoaded = true;
      update();
    } else {}
  }

  void setQuantity(bool isIncrement) {
    if (isIncrement) {
      log("increment");
      _quantity = checkQuantity(_quantity + 1);
    } else {
      _quantity = checkQuantity(_quantity - 1);
    }
    update();
  }

  int checkQuantity(int quantity) {
    if (quantity < 0) {
      Get.snackbar(
        "Item Count",
        "You can't reduce more!",
        backgroundColor: AppColors.mainColor,
        colorText: Colors.white,
      );
      return 0;
    } else if (quantity > 20) {
      Get.snackbar(
        "Item Count",
        "You can't Add more!",
        backgroundColor: AppColors.mainColor,
        colorText: Colors.white,
      );
      return 20;
    } else {
      return quantity;
    }
  }
}
