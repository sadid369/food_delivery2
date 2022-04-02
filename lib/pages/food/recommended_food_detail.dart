import 'package:flutter/material.dart';
import 'package:food_delivery2/utils/colors.dart';
import 'package:food_delivery2/utils/dimensions.dart';
import 'package:food_delivery2/widgets/big_text.dart';

class RecommendedFoodDetail extends StatelessWidget {
  const RecommendedFoodDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(20),
              child: Container(
                color: Colors.white,
                child: Center(
                    child: BigText(
                  text: "Chinese Side",
                  size: Dimensions.font26,
                )),
                width: double.maxFinite,
                padding: EdgeInsets.only(
                  top: 5,
                  bottom: 10,
                ),
              ),
            ),
            expandedHeight: 300,
            pinned: true,
            backgroundColor: AppColors.yellowColor,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                "assets/image/food0.png",
                fit: BoxFit.cover,
                width: double.maxFinite,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Text(
                '''If you’re planning an Asian-themed dinner, these incredible Chinese side dishes will make it a feast to remember.
                  
                  From flavorful veggies to filling rice and noodle dishes, these recipes are sure to complement any main course!If you’re planning an Asian-themed dinner, these incredible Chinese side dishes will make it a feast to remember.
                  
                  From flavorful veggies to filling rice and noodle dishes, these recipes are sure to complement any main course!If you’re planning an Asian-themed dinner, these incredible Chinese side dishes will make it a feast to remember.
                  
                  From flavorful veggies to filling rice and noodle dishes, these recipes are sure to complement any main course!If you’re planning an Asian-themed dinner, these incredible Chinese side dishes will make it a feast to remember.
                  
                  From flavorful veggies to filling rice and noodle dishes, these recipes are sure to complement any main course!If you’re planning an Asian-themed dinner, these incredible Chinese side dishes will make it a feast to remember.
                  
                  From flavorful veggies to filling rice and noodle dishes, these recipes are sure to complement any main course!If you’re planning an Asian-themed dinner, these incredible Chinese side dishes will make it a feast to remember.
                  
                  From flavorful veggies to filling rice and noodle dishes, these recipes are sure to complement any main course!If you’re planning an Asian-themed dinner, these incredible Chinese side dishes will make it a feast to remember.
                  
                  From flavorful veggies to filling rice and noodle dishes, these recipes are sure to complement any main course!If you’re planning an Asian-themed dinner, these incredible Chinese side dishes will make it a feast to remember.
                  
                  From flavorful veggies to filling rice and noodle dishes, these recipes are sure to complement any main course!'''),
          )
        ],
      ),
    );
  }
}
