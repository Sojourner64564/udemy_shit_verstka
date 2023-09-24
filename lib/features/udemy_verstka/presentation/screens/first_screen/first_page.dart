import 'package:flutter/material.dart';
import 'package:udemy_shit_verstka/assets/colors/my_colors.dart';
import 'package:udemy_shit_verstka/cart_screen/cubit/add_delete_to_cart.dart';
import 'package:udemy_shit_verstka/features/udemy_verstka/presentation/screens/first_screen/best_seller_tile.dart';
import 'package:udemy_shit_verstka/features/udemy_verstka/presentation/screens/first_screen/categorys_tile.dart';
import 'package:udemy_shit_verstka/features/udemy_verstka/presentation/screens/first_screen/gridview_best_seller.dart';
import 'package:udemy_shit_verstka/features/udemy_verstka/presentation/screens/first_screen/hot_sales_image.dart';
import 'package:udemy_shit_verstka/features/udemy_verstka/presentation/screens/first_screen/hot_sales_tile.dart';
import 'package:udemy_shit_verstka/features/udemy_verstka/presentation/screens/first_screen/search_bar_tile.dart';
import 'package:udemy_shit_verstka/features/udemy_verstka/presentation/screens/first_screen/select_category_tile.dart';


class FirstPage extends StatelessWidget{
  FirstPage({super.key});

  final AddDeleteToCart addDeleteToCart = AddDeleteToCart();
  
  @override
  Widget build(BuildContext context) {
    return Container(
      color: MyColors.pageBackground,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SelectCategoryTile(),
              CategorysTile(),
              const SizedBox(height: 15),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: SearchBarTile(),
              ),
              const HotSalesTile(),
              const HotSalesImage(),
              const BestSellerTile(),
              GridviewBestSeller(addDeleteToCart: addDeleteToCart,),
              const SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}