import 'package:flutter/material.dart';
import 'package:udemy_shit_verstka/assets/colors/my_colors.dart';
import 'package:udemy_shit_verstka/first_screen/best_seller_tile.dart';
import 'package:udemy_shit_verstka/first_screen/categorys_tile.dart';
import 'package:udemy_shit_verstka/first_screen/gridview_best_seller.dart';
import 'package:udemy_shit_verstka/first_screen/hot_sales_image.dart';
import 'package:udemy_shit_verstka/first_screen/hot_sales_tile.dart';
import 'package:udemy_shit_verstka/first_screen/search_bar_tile.dart';
import 'package:udemy_shit_verstka/first_screen/select_category_tile.dart';

class FirstPage extends StatelessWidget{
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: MyColors.pageBackground,
      child: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SelectCategoryTile(),
              CategorysTile(),
              SizedBox(height: 15),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: SearchBarTile(),
              ),
              HotSalesTile(),
              HotSalesImage(),
              BestSellerTile(),
              GridviewBestSeller(),
            ],
          ),
        ),
      ),
    );
  }
}