import 'package:flutter/material.dart';
import 'package:udemy_shit_verstka/assets/colors/my_colors.dart';
import 'package:udemy_shit_verstka/assets/sizes/sizes.dart';
import 'package:udemy_shit_verstka/assets/text_styles/text_styles.dart';
import 'package:udemy_shit_verstka/product_details_screen/product_details_page.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyColors.pageBackground,
        titleSpacing: 0,
        elevation: 0,
        leadingWidth: 0,
        automaticallyImplyLeading: false,
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
             // const Spacer(flex: 1),
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  color: MyColors.deepBlueColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Icon(
                  Icons.arrow_back_ios_sharp,
                  color: MyColors.whiteColor,
                  size: Sizes.iconAppBarSize,
                ),
              ),
              //const Spacer(flex: 2),
              const Text(
                'Product Details',
                style: TextStyles.forFilterTextTwo,
              ),
             // const Spacer(flex: 2),
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  color: MyColors.orangeColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Icon(
                  Icons.shopping_bag_outlined,
                  color: MyColors.whiteColor,
                  size: Sizes.iconAppBarSize,
                ),
              ),
            ],
          ),
        ),
      ),
      body: ProductDetailsPage(),
    );
  }
}
