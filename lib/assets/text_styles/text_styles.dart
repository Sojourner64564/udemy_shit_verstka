import 'package:flutter/material.dart';
import 'package:udemy_shit_verstka/assets/colors/my_colors.dart';

class TextStyles{
  static const TextStyle hugeFontStyle = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w600,
    color: MyColors.deepBlueColor,
  );
  static const TextStyle smallOrangeStyle = TextStyle(
    fontSize: 13,
    fontWeight: FontWeight.bold,
    color: MyColors.orangeColor,
  );
  static const TextStyle greyTextStyle = TextStyle(
    color: Colors.grey,
  );
  static const TextStyle hugeFontForCost = TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.w600,
  );
  static const TextStyle greyTextThroughLineCost = TextStyle(
    decoration: TextDecoration.lineThrough,
    color: Colors.grey,
    fontSize: 13,
    fontWeight: FontWeight.w600,
  );
  static const TextStyle textNormal = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
  );

  static const TextStyle forCategorysText = TextStyle(
    fontSize: 10,
    fontWeight: FontWeight.w500,
  );
  static const TextStyle forFilterText = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w600,
    color: MyColors.whiteColor,
  );
  static const TextStyle forFilterTextTwo = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: MyColors.deepBlueColor,
  );
  static const TextStyle forProductTitleDetails = TextStyle(
    fontSize: 23,
    fontWeight: FontWeight.w500,
    color: MyColors.deepBlueColor,
  );
  static const TextStyle forActiveButtonsForPageview = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w500,
    color: MyColors.deepBlueColor,
  );
  static const TextStyle forInactiveButtonsForPageview = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w400,
    color: MyColors.greyColor,
  );
  static const TextStyle forCharacteristicForPagePageview = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.normal,
    color: MyColors.greyColor,
  );
  static const TextStyle forColorSelectorText = TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.w500,
    color: MyColors.deepBlueColor,
  );
  static const TextStyle forActiveMemoryButtonText = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w500,
    color: MyColors.whiteColor,
  );
  static const TextStyle forInactiveMemoryButtonText = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w500,
    color: MyColors.greyColor,
  );
  static const TextStyle forAddToCartButtonText = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w700,
    color: MyColors.whiteColor,
  );
}