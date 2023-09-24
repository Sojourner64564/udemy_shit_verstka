import 'package:flutter/material.dart';
import 'package:udemy_shit_verstka/assets/colors/my_colors.dart';
import 'package:udemy_shit_verstka/assets/text_styles/text_styles.dart';

class ActiveMemoryButton extends StatelessWidget{
  const ActiveMemoryButton({super.key, required this.memory});
final String memory;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: 70,
      decoration: BoxDecoration(
        color: MyColors.orangeColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(child: Text('$memory GB',
        style: TextStyles.forActiveMemoryButtonText,
      ),
      ),
    );
  }
}