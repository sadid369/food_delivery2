import 'dart:developer';

import 'package:food_delivery2/models/cart_model.dart';
import 'package:food_delivery2/models/products_model.dart';
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
    // log("Length of the item : " + _items.length.toString());

    _items.putIfAbsent(product.id!, () {
      log("adding to the cart  & ID: " +
          product.id.toString() +
          "  " +
          product.name.toString() +
          "Quantity: " +
          quantity.toString());
      _items.forEach(
        (key, value) {
          print("quantity is " + value.quantity.toString());
        },
      );
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
  }
}
