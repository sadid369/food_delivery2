// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:food_delivery2/utils/colors.dart';
import 'package:food_delivery2/utils/dimensions.dart';
import 'package:food_delivery2/widgets/app_column.dart';
import 'package:food_delivery2/widgets/app_icon.dart';
import 'package:food_delivery2/widgets/big_text.dart';
import 'package:food_delivery2/widgets/icon_and_text.dart';
import 'package:food_delivery2/widgets/small_text.dart';

class PopularFoodDetail extends StatelessWidget {
  const PopularFoodDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Positioned(
          left: 0,
          right: 0,
          child: Container(
            width: double.maxFinite,
            height: Dimensions.popularFoodImgSize,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/image/food0.png'),
              ),
            ),
          ),
        ),
        Positioned(
          top: Dimensions.height45,
          left: Dimensions.width20,
          right: Dimensions.width20,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AppIcon(
                icon: Icons.arrow_back_ios,
              ),
              AppIcon(
                icon: Icons.shopping_cart_outlined,
              ),
            ],
          ),
        ),
        Positioned(
          left: 0,
          right: 0,
          bottom: 0,
          top: Dimensions.popularFoodImgSize - 20,
          child: Container(
              padding: EdgeInsets.only(
                left: Dimensions.width20,
                right: Dimensions.width20,
                top: Dimensions.height20,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(
                    Dimensions.radius20,
                  ),
                  topLeft: Radius.circular(
                    Dimensions.radius20,
                  ),
                ),
                color: Colors.white,
              ),
              child: AppColumn(
                text: "Chinese Side",
              )),
        ),
      ]),
    );
  }
}
