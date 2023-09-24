import 'package:flutter/material.dart';
import 'package:udemy_shit_verstka/assets/colors/my_colors.dart';

class GreyStarsTile extends StatelessWidget{
  const GreyStarsTile({super.key});


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 20,
      width: double.infinity,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 5,
          itemBuilder: (context, index){
            return const Icon(Icons.star,
              color: MyColors.greyColor,
            );
          }),
    );

  }
}
