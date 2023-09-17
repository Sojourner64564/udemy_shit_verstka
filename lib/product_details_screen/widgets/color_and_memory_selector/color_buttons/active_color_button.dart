import 'package:flutter/material.dart';
import 'package:udemy_shit_verstka/assets/colors/my_colors.dart';

class ActiveColorButton extends StatelessWidget{
  const ActiveColorButton({super.key, required this.color});
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(50),
      ),
      child: const Center(child: Icon(Icons.check, color: MyColors.whiteColor,),
      ),
    );
  }
}