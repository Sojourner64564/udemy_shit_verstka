import 'package:flutter/material.dart';
import 'package:udemy_shit_verstka/assets/colors/my_colors.dart';
import 'package:udemy_shit_verstka/assets/text_styles/text_styles.dart';

class LoadingAddToCartButton extends StatelessWidget{
  const LoadingAddToCartButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: MyColors.orangeColor,
      ),
      child: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Add to Cart',
              style: TextStyles.forAddToCartButtonText,),
            Text('\$\$\$',
              style: TextStyles.forAddToCartButtonText,),
          ],
        ),
      ),
    );
  }
}