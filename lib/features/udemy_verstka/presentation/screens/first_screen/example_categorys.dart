import 'package:flutter/material.dart';
import 'package:udemy_shit_verstka/assets/colors/my_colors.dart';
import 'package:udemy_shit_verstka/assets/text_styles/text_styles.dart';
import 'package:udemy_shit_verstka/features/udemy_verstka/presentation/screens/first_screen/for_example/category.dart';

class ExampleCategorys extends StatelessWidget{
  const ExampleCategorys({super.key, required this.category});
    final Category category;
    
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: category.onTap,
      child: SizedBox(
        width: 60,
        height: 90,
        child: Column(
          children: [
            Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(60),
                color: MyColors.whiteColor,
              ),
              child: Icon(category.icon,
              color: MyColors.greyColor,
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
      ),
    );
  }
}
