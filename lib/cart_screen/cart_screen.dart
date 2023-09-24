import 'package:flutter/material.dart';
import 'package:udemy_shit_verstka/assets/colors/my_colors.dart';
import 'package:udemy_shit_verstka/assets/sizes/sizes.dart';
import 'package:udemy_shit_verstka/assets/text_styles/text_styles.dart';
import 'package:udemy_shit_verstka/cart_screen/cart_page.dart';
import 'package:udemy_shit_verstka/cart_screen/cubit/add_delete_to_cart.dart';

class CartScreen extends StatelessWidget{
  const CartScreen({super.key, required this.addDeleteToCart});
  final AddDeleteToCart addDeleteToCart;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyColors.pageBackground,
        centerTitle: true,
        elevation: 0,
        titleSpacing: 0,
        automaticallyImplyLeading: false,
        title:  Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: (){
                  Navigator.pop(context);
                },
                child: Container(
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
              ),
              const Expanded(child: SizedBox()),
              const Text(
                'Add address',
                style: TextStyles.forFilterTextTwo,
              ),
              const SizedBox(width: 10),
              InkWell(
                onTap: (){
                  addDeleteToCart.clearHive();
                },
                child: Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    color: MyColors.orangeColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Icon(
                    Icons.gps_fixed_outlined,
                    color: MyColors.whiteColor,
                    size: Sizes.iconAppBarSize,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: CartPage(addDeleteToCart: addDeleteToCart),
    );
  }
}