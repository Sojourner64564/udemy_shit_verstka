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

}