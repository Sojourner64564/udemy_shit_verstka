import 'package:flutter/material.dart';
import 'package:udemy_shit_verstka/assets/text_styles/text_styles.dart';

class ActiveButtonFromRow extends StatelessWidget{
  const ActiveButtonFromRow({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35,
      width: MediaQuery.of(context).size.width/4.1,
      decoration: const BoxDecoration(
        border: Border(
          //bottom: BorderSide(width: 2, color: MyColors.orangeColor),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(bottom: 5),
        child: Center(
          child: Text(
            title,
            style: TextStyles.forActiveButtonsForPageview,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ),
    );
  }
}
