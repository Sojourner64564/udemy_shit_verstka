
import 'package:flutter/material.dart';
import 'package:udemy_shit_verstka/assets/colors/my_colors.dart';
import 'package:udemy_shit_verstka/assets/sizes/sizes.dart';
import 'package:udemy_shit_verstka/assets/text_styles/text_styles.dart';

class FirstPageForPageview extends StatelessWidget{
  const FirstPageForPageview({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size.width/4.7;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
      SizedBox(
        width: size,
        child: const Column(
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 5),
              child: Icon(Icons.memory_outlined,
              color: MyColors.greyColor,
                size: Sizes.forCharacteristicForPagePageview,
              ),
            ),
            Text('Exynos 990',
              overflow: TextOverflow.ellipsis,
              style: TextStyles.forCharacteristicForPagePageview,),
          ],
        ),
      ),
       SizedBox(
        width: size,
        child: const Column(
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 5),
              child: Icon(Icons.camera_alt_outlined,
              color: MyColors.greyColor,
                size: Sizes.forCharacteristicForPagePageview,
              ),
            ),
            Text('108 + 12MP',
              style: TextStyles.forCharacteristicForPagePageview,),
          ],
        ),
      ),
       SizedBox(
        width: size,
        child: const Column(
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 5),
              child: Icon(Icons.radio,
              color: MyColors.greyColor,
                size: Sizes.forCharacteristicForPagePageview,
              ),
            ),
            Text('8 GB',
              style: TextStyles.forCharacteristicForPagePageview,),
          ],
        ),
      ),
       SizedBox(
        width: size,
        child: const Column(
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 5),
              child: Icon(Icons.sd_card_outlined,
              color: MyColors.greyColor,
                size: Sizes.forCharacteristicForPagePageview,
              ),
            ),
            Text('256 GB',
              style: TextStyles.forCharacteristicForPagePageview,
            ),
          ],
        ),
      ),

    ],
    );
  }
}