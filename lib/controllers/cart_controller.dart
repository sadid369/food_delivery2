import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:food_delivery2/models/cart_model.dart';
import 'package:food_delivery2/models/products_model.dart';
import 'package:food_delivery2/utils/colors.dart';
import 'package:get/get.dart';

import 'package:food_delivery2/data/repository/cart_repo.dart';

class CartController extends GetxController {
  final CartRepo cartRepo;
  CartController({
    required this.cartRepo,
  });

  Map<int, CartModel> _items = {};
  Map<int, CartModel> get item => _items;

  void addItem(ProductModel product, int quantity) {
    var totalQuantity = 0;
    // log("Length of the item : " + _items.length.toString());
    if (_items.containsKey(product.id)) {
      _items.update(product.id!, (value) {
        totalQuantity = value.quantity! + quantity;
        return CartModel(
          id: value.id,
          img: value.img,
          name: value.name,
          price: value.price,
          quantity: value.quantity! + quantity,
          isExist: true,
          time: DateTime.now().toString(),
        );
      });
      if (totalQuantity <= 0) {
        _items.remove(product.id);
      }
    } else {
      if (quantity > 0) {
        _items.putIfAbsent(product.id!, () {
          return CartModel(
            id: product.id,
            img: product.img,
            name: product.name,
            price: product.price,
            quantity: quantity,
            isExist: true,
            time: DateTime.now().toString(),
          );
        });
      } else {
        Get.snackbar(
          "Item Count",
          "You should at least add an item in the Cart",
          backgroundColor: AppColors.mainColor,
          colorText: Colors.white,
        );
      }
    }
  }

  bool existInCart(ProductModel product) {
    if (_items.containsKey(product.id)) {
      return true;
    } else {
      return false;
    }
  }

  int getQuantity(ProductModel product) {
    var quantity = 0;
    if (_items.containsKey(product.id)) {
      _items.forEach((key, value) {
        if (key == product.id) {
          quantity = value.quantity!;
        }
      });
    }
    return quantity;
  }
}
