import 'package:flutter/material.dart';
import 'package:udemy_shit_verstka/assets/colors/my_colors.dart';
import 'package:udemy_shit_verstka/assets/text_styles/text_styles.dart';
import 'package:udemy_shit_verstka/features/udemy_verstka/presentation/screens/first_screen/for_example/category.dart';

class ExampleCategories extends StatelessWidget{
  const ExampleCategories({super.key, required this.category, required this.buttonColor, required this.iconColor});
    final Category category;
    final Color buttonColor;
    final Color iconColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 60,
      height: 90,
      child: Column(
        children: [
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(60),
              color: buttonColor,
            ),
            child: Icon(category.icon,
            color: iconColor,
            ),
          ),
          const SizedBox(height: 5),
          Text(category.title,
          maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyles.forCategorysText,
          ),
        ],
      ),
    );
  }
}
