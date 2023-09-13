import 'package:flutter/material.dart';
import 'package:udemy_shit_verstka/assets/colors/my_colors.dart';

class ExampleCategorys extends StatelessWidget{
  const ExampleCategorys({super.key, required this.icon, required this.title});
    final IconData icon;
    final String title;
    
  @override
  Widget build(BuildContext context) {
    return Container(
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
            child: Icon(icon,
            color: MyColors.greyColor,
            ),
          ),
          const SizedBox(height: 5),
          Text(title),
        ],
      ),
    );
  }
}
