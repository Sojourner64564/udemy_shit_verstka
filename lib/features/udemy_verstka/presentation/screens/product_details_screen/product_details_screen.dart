import 'package:flutter/material.dart';
import 'package:udemy_shit_verstka/assets/colors/my_colors.dart';
import 'package:udemy_shit_verstka/assets/sizes/sizes.dart';
import 'package:udemy_shit_verstka/assets/text_styles/text_styles.dart';
import 'package:udemy_shit_verstka/features/udemy_verstka/presentation/screens/product_details_screen/product_details_page.dart';
import '../cart_screen/cart_screen.dart';
import '../cart_screen/cubit/add_delete_to_cart.dart';
import '../first_screen/for_example/mobile_phone.dart';


class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({super.key, required this.mobilePhone, required this.addDeleteToCart, required this.id});
  final MobilePhone mobilePhone;
  final AddDeleteToCart addDeleteToCart;
  final String id;

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
              const Text(
                'Product Details',
                style: TextStyles.forFilterTextTwo,
              ),
              GestureDetector(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => CartScreen(addDeleteToCart: addDeleteToCart,)),
                  );
                },
                child: Container(
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
              ),
            ],
          ),
        ),
      ),
      body: ProductDetailsPage(mobilePhone: mobilePhone, addDeleteToCart: addDeleteToCart, id: id,),
    );
  }
}
